//
//  LocalChannelTVC.swift
//  WeshApp
//
//  Created by z.kakabadze on 25/10/2014.
//  Copyright (c) 2014 WeshApp. All rights reserved.
//

import UIKit
import CoreData
import Designables

class LocalChannelTVC: UITableViewController, NSFetchedResultsControllerDelegate,UIPopoverPresentationControllerDelegate {

    var badgeFetchedRC: NSFetchedResultsController!
    var channelFetechedRC: NSFetchedResultsController!
    var currentFetchedRC : NSFetchedResultsController!
    var coreDataStack: CoreDataStack!
    var sessionMngr: SessionMngr?
    let appDelegate = UIApplication.sharedApplication().delegate! as AppDelegate
    let screenSize  = UIScreen.mainScreen().bounds.size


    @IBOutlet weak var segControl: UISegmentedControl!
    
    //MARK: Segmentation Control
    @IBAction func segmentChanged(sender: UISegmentedControl) {
        switch segControl.selectedSegmentIndex
        {
        case 0:
           currentFetchedRC = channelFetechedRC
           var error: NSError? = nil
           if (!currentFetchedRC.performFetch(&error))  {
            println("Error: \(error?.localizedDescription)") }
           
           tableView.reloadData()
        case 1:
            currentFetchedRC = badgeFetchedRC
            var error: NSError? = nil
            if (!currentFetchedRC.performFetch(&error))  {
                println("Error: \(error?.localizedDescription)") }
        
        tableView.reloadData()
        default:
            break; 
        }
    
    
    }
    
 

    //MARK: Set up
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.hidesBarsOnTap
        UIApplication.sharedApplication().statusBarHidden = false
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        let font = UIFont(name: "TitilliumText25L-250wt", size: 5.0)!
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.whiteColor(),
            NSFontAttributeName: font ]
        
        var backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        backButton.setTitleTextAttributes(titleDict, forState: UIControlState.Normal)
   
        self.navigationItem.backBarButtonItem = backButton
        
        
        sessionMngr = appDelegate.sessionMngr
        coreDataStack = appDelegate.coreDataStack!
      
        let channelFetchRequest = NSFetchRequest(entityName: "Channel")
        let channelSortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        channelFetchRequest.sortDescriptors = [channelSortDescriptor]
        channelFetechedRC = NSFetchedResultsController(fetchRequest: channelFetchRequest,
                                                      managedObjectContext: appDelegate.coreDataStack!.mainContext!,
                                                        sectionNameKeyPath: nil,
                                                                 cacheName: nil)
       
        //TODO: Filter my badge out
        let badgeFetchRequest = NSFetchRequest(entityName: "Badge")
        let badgeSortDescriptor = NSSortDescriptor(key: "handle", ascending: true)

        badgeFetchRequest.sortDescriptors = [badgeSortDescriptor]
        badgeFetchedRC = NSFetchedResultsController(fetchRequest: badgeFetchRequest,
                                            managedObjectContext: appDelegate.coreDataStack!.mainContext!,
                                              sectionNameKeyPath: nil,
                                                       cacheName: nil)
        
        
        currentFetchedRC  = channelFetechedRC
        currentFetchedRC.delegate = self
        
        var error: NSError? = nil
        if (!currentFetchedRC.performFetch(&error))  {
            println("Error: \(error?.localizedDescription)") }
        
      
        
    }
     
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Number of Sections
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return currentFetchedRC.sections!.count
    }
    // MARK: - Number of Rows
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionInfo = currentFetchedRC.sections![section] as NSFetchedResultsSectionInfo
        return sectionInfo.numberOfObjects
    }
    // MARK: - Cell for Row at IndexPath
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as? ChannelTableViewCell
        cell!.layoutSubviews()
        cell!.accessoryView = WeshappCellArrow(frame: CGRect(x: 0, y: 0, width: screenSize.width * 0.02 , height: screenSize.height * 0.02 ))
        cell!.accessoryView!.backgroundColor = UIColor.whiteColor()
        
        switch segControl.selectedSegmentIndex
        {
            case 0:
                let channel = currentFetchedRC.objectAtIndexPath(indexPath) as Channel
                cell!.title.text = channel.title
                //TODO if name is known show real name instead
                cell!.subTitle.text = channel.author.handle
            
                //TODO: cell!.image =
                
            case 1:
                let badge = currentFetchedRC.objectAtIndexPath(indexPath) as Badge
                //cell.textLabel!.text = badge.handle
            default:
                break;
        }
        
        return cell!
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return screenSize.height * 0.15
    }
    
    //MARK: - Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "ChannelDescriptionSegue" {
                let channelPageVC = segue.destinationViewController as ChannelPageVC
                
                let indexPath = self.tableView.indexPathForSelectedRow()
                //If as Channel else as Profile
                let channel = currentFetchedRC.objectAtIndexPath(indexPath!) as Channel
                channelPageVC.channel = channel
                channelPageVC.coreDataStack = coreDataStack
                channelPageVC.sessionMngr = sessionMngr
            }
    }
    
    //MARK: NSFetchedResultsController Delegate methods
    func controllerWillChangeContent(controller: NSFetchedResultsController!) {
        tableView.beginUpdates()
    }
    
    func controller (controller: NSFetchedResultsController,
      didChangeObject anObject: AnyObject,
         atIndexPath indexPath: NSIndexPath!,
            forChangeType type: NSFetchedResultsChangeType,
        newIndexPath: NSIndexPath!) {
    
        switch type {
            case .Insert:
                tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Automatic)
            case .Delete:
                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            case .Update:
                let cell = tableView.cellForRowAtIndexPath(indexPath) //as TeamCell
                //configureCell(cell, indexPath: indexPath)
            case .Move: tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
                        tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Automatic)
            default: break
        }
    }
    
    func controllerDidChangeContent(controller: NSFetchedResultsController!) {
        tableView.endUpdates()
    }

   
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: Popover controller
    @IBAction func handlePopover(sender: UIBarButtonItem) {
        let popoverVC = storyboard?.instantiateViewControllerWithIdentifier("createChannelPopover") as UIViewController
        popoverVC.modalPresentationStyle = .Popover
        if let popoverController = popoverVC.popoverPresentationController {
            popoverController.barButtonItem = sender
            //popoverController.sourceRect = sender.bounds
            popoverController.permittedArrowDirections = .Any
            
            popoverController.delegate = self
        }
        //self.navigationController!.pushViewController(popoverVC, animated: true)
        presentViewController(popoverVC, animated: true, completion: nil)
        
    }
    
    // MARK: - UIPopoverPresentationControllerDelegate
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController!) -> UIModalPresentationStyle {
        return .OverFullScreen
    }
    
    
    func presentationController(              controller: UIPresentationController!,
        viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController! {
            
            var navbar = navigationController!.navigationBar
            var titleLabel = UILabel()
            let font = UIFont(name: "TitilliumText25L-250wt", size: 19.0)!
            let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.whiteColor(),
                NSFontAttributeName: font ]
            titleLabel.attributedText = NSAttributedString(string: "Create Habitat",
                attributes: titleDict)
            titleLabel.sizeToFit()
            
            var nav = UINavigationController(navigationBarClass: navbar.classForCoder, toolbarClass: nil)
            let midY = (nav.navigationBar.frame.height - 20) / 2.0
            
            let screenSize  = UIScreen.mainScreen().bounds.size.width
            
            let midX = (screenSize/2) - (titleLabel.frame.width / 2)
            
            titleLabel.frame.origin = CGPoint(x: midX, y: midY)
            
            nav.navigationBar.addSubview(titleLabel)
            nav.pushViewController(controller.presentedViewController, animated: true)
            return nav
            
    }

}
