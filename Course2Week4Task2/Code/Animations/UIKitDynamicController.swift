//
//  UIKitDynamicController.swift
//  Course2Week4Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class UIKitDynamicController: UIViewController {
    
    private var oscillationBehavior: UIAttachmentBehavior?
    private var dynamicAnimator: UIDynamicAnimator!
    @IBOutlet weak var anchorView: UIView!
    @IBOutlet weak var animationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupGestureRecognizers()
    }
    
    // MARK: - Actions
    
    @IBAction func panGestureHandler(recognizer: UIPanGestureRecognizer) {
        switch recognizer.state {
        case .changed:
            let point = recognizer.location(in: self.view)
            self.oscillationBehavior?.anchorPoint = point
            self.anchorView.layer.position = point
        default:
            ()
        }
    }
    
    @IBAction func startAnimationHandler(recognizer: UITapGestureRecognizer) {
        if dynamicAnimator != nil {
            return
        }
        
        dynamicAnimator = UIDynamicAnimator(referenceView: view)
        let oscillation = UIAttachmentBehavior(item: self.animationView, attachedToAnchor: self.anchorView.frame.origin)
        let gravity = UIGravityBehavior(items: [self.animationView])
        dynamicAnimator.addBehavior(gravity)
        dynamicAnimator.addBehavior(oscillation)
        self.oscillationBehavior = oscillation
    }
    
    // MARK: - Private methods
    func setupGestureRecognizers() {
        if let gestureRecognizer = self.anchorView.gestureRecognizers?.first {
            gestureRecognizer.addTarget(self, action: #selector(panGestureHandler(recognizer:)))
        }
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(startAnimationHandler(recognizer:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
}
