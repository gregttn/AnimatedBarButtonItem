//
//  AnimatedBarButtonItem.swift
//  AnimatedBarButtonItem
//
//  Created by Grzegorz Tatarzyn on 03/03/2015.
//  Copyright (c) 2015 Grzegorz Tatarzyn. All rights reserved.
//

import UIKit

class RotatingBarButtonItem: UIBarButtonItem {
    let angle = CGFloat(90 * M_PI / 180.0)
    var isRotated = false
    
    init(image: UIImage) {
        super.init()
        
        let customButton = UIButton(frame: CGRectMake(0, 0, 40, 40))
        customButton.setBackgroundImage(image, forState: UIControlState.Normal)
        customButton.showsTouchWhenHighlighted = true
        customButton.addTarget(self, action: "animate", forControlEvents: UIControlEvents.TouchDown)
        
        self.customView = customButton
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func animate() {
        UIView.animateWithDuration(0.5) { () -> Void in
            
            if self.isRotated {
                self.customView?.transform = CGAffineTransformIdentity
            } else {
                self.customView?.transform = CGAffineTransformMakeRotation(self.angle)
            }
            
            self.isRotated = !self.isRotated
        }
    }
}
