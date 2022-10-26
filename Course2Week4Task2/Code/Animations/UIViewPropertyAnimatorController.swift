//
//  UIViewPropertyAnimatorController.swift
//  Course2Week4Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class UIViewPropertyAnimatorController: UIViewController {
    
    private var animator: UIViewPropertyAnimator!
    @IBOutlet weak var animationView: UIView!
    
    @IBAction func panGestureHandler(recognizer: UIPanGestureRecognizer) {
        switch recognizer.state {
            
        case .began:
            let timingCurveParameter = UISpringTimingParameters(mass: 2.0, stiffness: 30.0, damping: 7, initialVelocity: .zero)
            animator = UIViewPropertyAnimator(duration: 0, timingParameters: timingCurveParameter)
            animator.addAnimations{
                self.animationView.center.x += 300
                self.animationView.transform = CGAffineTransform(rotationAngle: .pi).scaledBy(x: 1.5, y: 1.5)
            }
            animator.pauseAnimation()
            
        case .changed:
            animator.fractionComplete = recognizer.translation(in: view).x / view.bounds.size.width
        
        case .ended:
            if let presentationLayer = self.animationView.layer.presentation(), presentationLayer.position.x < self.view.center.x {
                animator.isReversed = true
            }
        default:
            ()
        }
    }
}
