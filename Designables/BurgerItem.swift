//
//  BurgerItem.swift
//  WeshApp
//
//  Created by rabzu on 24/03/2015.
//  Copyright (c) 2015 WeshApp. All rights reserved.
//

import UIKit

//Inherit from UIControl to add target actions stuff
public class BurgerItem: UIControl{

    private var isPressed = false
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
   public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }

    private func setUp(){
        self.backgroundColor = UIColor.clearColor()
    }
    
    public  override func drawRect(rect: CGRect) {
        BurgerSK.drawBurger(frame: rect, clicked: isPressed, notclicked: !isPressed)
    }
    
    public  func touchDown(sender: UIView) {
        isPressed = true
        setNeedsDisplay()
    }
    
    public  func touchUpInside(sender: UIView) {
        isPressed = false
        setNeedsDisplay()
    }
    
}
    
   
    
