//
//  UIViewAnimationController.swift
//  Course2Week4Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class UIViewAnimationController: UIViewController {
    
    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var flipButton: UIButton!
    
    @IBAction func animationViewTapHandler(sender: UITapGestureRecognizer) {
         UIView.animate(withDuration: 1.0, delay: 0.5, options: [.curveEaseInOut], animations:{
            var endPoint = self.animationView.center
            endPoint.x = self.view.bounds.size.width - self.animationView.bounds.size.width / 2
            self.animationView.center = endPoint
            self.animationView.transform = CGAffineTransform(rotationAngle: .pi)
        })
    }
    
    @IBAction func flipButtonTapHandler(sender: UIButton) {
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseInOut], animations: {
            self.view.transform = self.view.transform.rotated(by: .pi)
            self.flipButton.transform = self.flipButton.transform.rotated(by: .pi)
        })
    }
}
