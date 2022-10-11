//
//  CATransitionController.swift
//  Course2Week4Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CATransitionController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!

    @IBAction func swipeHandler(_ sender: UISwipeGestureRecognizer) {
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            let animation = CATransition()
            animation.duration = 1.0
            animation.type = .fade
            animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
            self.textLabel.layer.add(animation, forKey: "animation")
            self.textLabel.text = "Initial Text"
            self.textLabel.textColor = .orange
        }
        
        let swipeRight = CATransition()
        swipeRight.type = .moveIn
        swipeRight.duration = 1.0
        swipeRight.timingFunction = CAMediaTimingFunction(name: .easeOut)
        textLabel.layer.add(swipeRight, forKey: "swipe")
        textLabel.text = "Sliding!"
        textLabel.textColor = .green
        CATransaction.commit()
    }

}
