//
//  WeshappHeartSK.swift
//  Weshapp
//
//  Created by SM on 23/02/2015.
//  Copyright (c) 2015 Weshapp. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class WeshappHeartSK : NSObject {

    //// Drawing Methods

    public class func drawHearIcon(#frame: CGRect, hrtActive: Bool, hrtInactive: Bool) {
        //// Color Declarations
        let active = UIColor(red: 1.000, green: 0.349, blue: 0.349, alpha: 1.000)
        let inactive = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.000)

        if (hrtActive) {
            //// hrtIconActive Drawing
            var hrtIconActivePath = UIBezierPath()
            hrtIconActivePath.moveToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.97619 * frame.height))
            hrtIconActivePath.addLineToPoint(CGPointMake(frame.minX + 0.48070 * frame.width, frame.minY + 0.96200 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.38821 * frame.width, frame.minY + 0.88654 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.45691 * frame.width, frame.minY + 0.93969 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.42507 * frame.width, frame.minY + 0.91506 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.02083 * frame.width, frame.minY + 0.32965 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.24191 * frame.width, frame.minY + 0.77337 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.02083 * frame.width, frame.minY + 0.60234 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.29072 * frame.width, frame.minY + 0.02576 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.02083 * frame.width, frame.minY + 0.16208 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.14190 * frame.width, frame.minY + 0.02576 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.13228 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.37026 * frame.width, frame.minY + 0.02576 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.44482 * frame.width, frame.minY + 0.06501 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.70095 * frame.width, frame.minY + 0.02576 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.54684 * frame.width, frame.minY + 0.06501 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.62140 * frame.width, frame.minY + 0.02576 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.97083 * frame.width, frame.minY + 0.32965 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.84976 * frame.width, frame.minY + 0.02576 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.97083 * frame.width, frame.minY + 0.16208 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.60346 * frame.width, frame.minY + 0.88654 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.97083 * frame.width, frame.minY + 0.60234 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.74975 * frame.width, frame.minY + 0.77337 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.51097 * frame.width, frame.minY + 0.96200 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.56660 * frame.width, frame.minY + 0.91506 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.53475 * frame.width, frame.minY + 0.93969 * frame.height))
            hrtIconActivePath.addLineToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.97619 * frame.height))
            hrtIconActivePath.closePath()
            hrtIconActivePath.moveToPoint(CGPointMake(frame.minX + 0.29072 * frame.width, frame.minY + 0.07961 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.06833 * frame.width, frame.minY + 0.32965 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.16810 * frame.width, frame.minY + 0.07961 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.06833 * frame.width, frame.minY + 0.19177 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.41498 * frame.width, frame.minY + 0.84206 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.06833 * frame.width, frame.minY + 0.57389 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.26869 * frame.width, frame.minY + 0.72889 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.90684 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.44570 * frame.width, frame.minY + 0.86581 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.47301 * frame.width, frame.minY + 0.88694 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.57669 * frame.width, frame.minY + 0.84206 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.51865 * frame.width, frame.minY + 0.88694 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.54596 * frame.width, frame.minY + 0.86581 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.92333 * frame.width, frame.minY + 0.32965 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.72298 * frame.width, frame.minY + 0.72889 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.92333 * frame.width, frame.minY + 0.57389 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.70095 * frame.width, frame.minY + 0.07961 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.92333 * frame.width, frame.minY + 0.19177 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.82358 * frame.width, frame.minY + 0.07961 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.51557 * frame.width, frame.minY + 0.19166 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.62630 * frame.width, frame.minY + 0.07961 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.55700 * frame.width, frame.minY + 0.12150 * frame.height))
            hrtIconActivePath.addLineToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.22510 * frame.height))
            hrtIconActivePath.addLineToPoint(CGPointMake(frame.minX + 0.47610 * frame.width, frame.minY + 0.19166 * frame.height))
            hrtIconActivePath.addCurveToPoint(CGPointMake(frame.minX + 0.29072 * frame.width, frame.minY + 0.07961 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.43467 * frame.width, frame.minY + 0.12150 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.36537 * frame.width, frame.minY + 0.07961 * frame.height))
            hrtIconActivePath.closePath()
            active.setFill()
            hrtIconActivePath.fill()
        }


        if (hrtInactive) {
            //// hrtIconInactive Drawing
            var hrtIconInactivePath = UIBezierPath()
            hrtIconInactivePath.moveToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.97619 * frame.height))
            hrtIconInactivePath.addLineToPoint(CGPointMake(frame.minX + 0.48070 * frame.width, frame.minY + 0.96200 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.38821 * frame.width, frame.minY + 0.88654 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.45691 * frame.width, frame.minY + 0.93969 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.42507 * frame.width, frame.minY + 0.91506 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.02083 * frame.width, frame.minY + 0.32965 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.24191 * frame.width, frame.minY + 0.77337 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.02083 * frame.width, frame.minY + 0.60234 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.29072 * frame.width, frame.minY + 0.02576 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.02083 * frame.width, frame.minY + 0.16208 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.14190 * frame.width, frame.minY + 0.02576 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.13228 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.37026 * frame.width, frame.minY + 0.02576 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.44482 * frame.width, frame.minY + 0.06501 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.70095 * frame.width, frame.minY + 0.02576 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.54684 * frame.width, frame.minY + 0.06501 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.62140 * frame.width, frame.minY + 0.02576 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.97083 * frame.width, frame.minY + 0.32965 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.84976 * frame.width, frame.minY + 0.02576 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.97083 * frame.width, frame.minY + 0.16208 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.60346 * frame.width, frame.minY + 0.88654 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.97083 * frame.width, frame.minY + 0.60234 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.74975 * frame.width, frame.minY + 0.77337 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.51097 * frame.width, frame.minY + 0.96200 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.56660 * frame.width, frame.minY + 0.91506 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.53475 * frame.width, frame.minY + 0.93969 * frame.height))
            hrtIconInactivePath.addLineToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.97619 * frame.height))
            hrtIconInactivePath.closePath()
            hrtIconInactivePath.moveToPoint(CGPointMake(frame.minX + 0.29072 * frame.width, frame.minY + 0.07961 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.06833 * frame.width, frame.minY + 0.32965 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.16810 * frame.width, frame.minY + 0.07961 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.06833 * frame.width, frame.minY + 0.19177 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.41498 * frame.width, frame.minY + 0.84206 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.06833 * frame.width, frame.minY + 0.57389 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.26869 * frame.width, frame.minY + 0.72889 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.90684 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.44570 * frame.width, frame.minY + 0.86581 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.47301 * frame.width, frame.minY + 0.88694 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.57669 * frame.width, frame.minY + 0.84206 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.51865 * frame.width, frame.minY + 0.88694 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.54596 * frame.width, frame.minY + 0.86581 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.92333 * frame.width, frame.minY + 0.32965 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.72298 * frame.width, frame.minY + 0.72889 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.92333 * frame.width, frame.minY + 0.57389 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.70095 * frame.width, frame.minY + 0.07961 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.92333 * frame.width, frame.minY + 0.19177 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.82358 * frame.width, frame.minY + 0.07961 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.51557 * frame.width, frame.minY + 0.19166 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.62630 * frame.width, frame.minY + 0.07961 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.55700 * frame.width, frame.minY + 0.12150 * frame.height))
            hrtIconInactivePath.addLineToPoint(CGPointMake(frame.minX + 0.49583 * frame.width, frame.minY + 0.22510 * frame.height))
            hrtIconInactivePath.addLineToPoint(CGPointMake(frame.minX + 0.47610 * frame.width, frame.minY + 0.19166 * frame.height))
            hrtIconInactivePath.addCurveToPoint(CGPointMake(frame.minX + 0.29072 * frame.width, frame.minY + 0.07961 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.43467 * frame.width, frame.minY + 0.12150 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.36537 * frame.width, frame.minY + 0.07961 * frame.height))
            hrtIconInactivePath.closePath()
            inactive.setFill()
            hrtIconInactivePath.fill()
        }
    }

}

@objc protocol StyleKitSettableImage {
    func setImage(image: UIImage!)
}

@objc protocol StyleKitSettableSelectedImage {
    func setSelectedImage(image: UIImage!)
}
