//
//  BurgerItem.swift
//  WeshApp
//
//  Created by rabzu on 24/03/2015.
//  Copyright (c) 2015 WeshApp. All rights reserved.
//

import UIKit

public class BurgerItem: NavBarItem{

    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public  override func drawRect(rect: CGRect) {
        BurgerSK.drawBurger(frame: rect, clicked: isPressed, notclicked: !isPressed)
    }
}
    
   
    

