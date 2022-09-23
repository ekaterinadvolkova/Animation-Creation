//
//  ViewController.swift
//  Course2Week4Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CABasicAnimationController: UIViewController {
    
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var cyanView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let orangeTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(performCABasicAnimation))
        self.orangeView.addGestureRecognizer(orangeTapRecognizer)
    }
    
    @IBAction func performCABasicAnimation(){
        
        let animatableView = self.orangeView!
        let animation = CABasicAnimation(keyPath: #keyPath(CALayer.cornerRadius))
        animation.duration = 1.0
        animation.fromValue = orangeView.layer.cornerRadius
        animation.toValue = orangeView.frame.height / 2
        animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        
        animatableView.layer.add(animation, forKey: "cornerRadius")
        orangeView.layer.cornerRadius = orangeView.frame.height / 2
        
    }
    
}
