//
//  WeshappRedButtonSK.swift
//  Weshapp
//
//  Created by SM on 06/02/2015.
//  Copyright (c) 2015 CompanyName. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class WeshappRedButtonSK : NSObject {

    //// Drawing Methods

    public class func drawRedButton(#redButtonFrame: CGRect, btnClicked: Bool) {
        //// Color Declarations
        let btnColor = UIColor(red: 1.000, green: 0.349, blue: 0.349, alpha: 1.000)
        let arrowPickColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let arrowLineColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let btnClickedColor = UIColor(red: 0.888, green: 0.290, blue: 0.290, alpha: 1.000)


        //// Subframes
        let arrowFrame = CGRectMake(redButtonFrame.minX + floor(redButtonFrame.width * 0.41600 + 0.5), redButtonFrame.minY + floor((redButtonFrame.height - 60) / 2 + 0.5), floor(redButtonFrame.width * 0.57600 + 0.5) - floor(redButtonFrame.width * 0.41600 + 0.5), 60)


        //// button Drawing
        var buttonPath = UIBezierPath()
        buttonPath.moveToPoint(CGPointMake(redButtonFrame.minX + 0.00000 * redButtonFrame.width, redButtonFrame.minY + -0.00000 * redButtonFrame.height))
        buttonPath.addLineToPoint(CGPointMake(redButtonFrame.minX + 1.00000 * redButtonFrame.width, redButtonFrame.minY + -0.00000 * redButtonFrame.height))
        buttonPath.addLineToPoint(CGPointMake(redButtonFrame.minX + 1.00000 * redButtonFrame.width, redButtonFrame.minY + 1.00000 * redButtonFrame.height))
        buttonPath.addLineToPoint(CGPointMake(redButtonFrame.minX + 0.00000 * redButtonFrame.width, redButtonFrame.minY + 1.00000 * redButtonFrame.height))
        buttonPath.addLineToPoint(CGPointMake(redButtonFrame.minX + 0.00000 * redButtonFrame.width, redButtonFrame.minY + -0.00000 * redButtonFrame.height))
        buttonPath.closePath()
        btnColor.setFill()
        buttonPath.fill()


        if (btnClicked) {
            //// button 2 Drawing
            var button2Path = UIBezierPath()
            button2Path.moveToPoint(CGPointMake(redButtonFrame.minX + 0.00000 * redButtonFrame.width, redButtonFrame.minY + -0.00000 * redButtonFrame.height))
            button2Path.addLineToPoint(CGPointMake(redButtonFrame.minX + 1.00000 * redButtonFrame.width, redButtonFrame.minY + -0.00000 * redButtonFrame.height))
            button2Path.addLineToPoint(CGPointMake(redButtonFrame.minX + 1.00000 * redButtonFrame.width, redButtonFrame.minY + 1.00000 * redButtonFrame.height))
            button2Path.addLineToPoint(CGPointMake(redButtonFrame.minX + 0.00000 * redButtonFrame.width, redButtonFrame.minY + 1.00000 * redButtonFrame.height))
            button2Path.addLineToPoint(CGPointMake(redButtonFrame.minX + 0.00000 * redButtonFrame.width, redButtonFrame.minY + -0.00000 * redButtonFrame.height))
            button2Path.closePath()
            btnClickedColor.setFill()
            button2Path.fill()
        }


        //// Arrow Pick Drawing
        var arrowPickPath = UIBezierPath()
        arrowPickPath.moveToPoint(CGPointMake(arrowFrame.minX + 0.52533 * arrowFrame.width, arrowFrame.minY + 0.32307 * arrowFrame.height))
        arrowPickPath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.69200 * arrowFrame.width, arrowFrame.minY + 0.50253 * arrowFrame.height))
        arrowPickPath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.67533 * arrowFrame.width, arrowFrame.minY + 0.52048 * arrowFrame.height))
        arrowPickPath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.50867 * arrowFrame.width, arrowFrame.minY + 0.34102 * arrowFrame.height))
        arrowPickPath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.52533 * arrowFrame.width, arrowFrame.minY + 0.32307 * arrowFrame.height))
        arrowPickPath.closePath()
        arrowPickPath.moveToPoint(CGPointMake(arrowFrame.minX + 0.50867 * arrowFrame.width, arrowFrame.minY + 0.67172 * arrowFrame.height))
        arrowPickPath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.67533 * arrowFrame.width, arrowFrame.minY + 0.49227 * arrowFrame.height))
        arrowPickPath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.69200 * arrowFrame.width, arrowFrame.minY + 0.51021 * arrowFrame.height))
        arrowPickPath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.52533 * arrowFrame.width, arrowFrame.minY + 0.68967 * arrowFrame.height))
        arrowPickPath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.50867 * arrowFrame.width, arrowFrame.minY + 0.67172 * arrowFrame.height))
        arrowPickPath.closePath()
        arrowPickColor.setFill()
        arrowPickPath.fill()


        //// Arrow Line Drawing
        var arrowLinePath = UIBezierPath()
        arrowLinePath.moveToPoint(CGPointMake(arrowFrame.minX + 0.66005 * arrowFrame.width, arrowFrame.minY + 0.49368 * arrowFrame.height))
        arrowLinePath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.36005 * arrowFrame.width, arrowFrame.minY + 0.49368 * arrowFrame.height))
        arrowLinePath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.36005 * arrowFrame.width, arrowFrame.minY + 0.51868 * arrowFrame.height))
        arrowLinePath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.66005 * arrowFrame.width, arrowFrame.minY + 0.51868 * arrowFrame.height))
        arrowLinePath.addLineToPoint(CGPointMake(arrowFrame.minX + 0.66005 * arrowFrame.width, arrowFrame.minY + 0.49368 * arrowFrame.height))
        arrowLinePath.closePath()
        arrowLineColor.setFill()
        arrowLinePath.fill()
    }

}

@objc protocol StyleKitSettableImage {
    func setImage(image: UIImage!)
}

@objc protocol StyleKitSettableSelectedImage {
    func setSelectedImage(image: UIImage!)
}
