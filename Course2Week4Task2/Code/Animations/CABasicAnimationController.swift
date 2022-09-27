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
        
        let orangeTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedOrange))
        self.orangeView.addGestureRecognizer(orangeTapRecognizer)
        
        let cyanTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedCyan))
        self.cyanView.addGestureRecognizer(cyanTapRecognizer)
        
        let blueTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedBlue))
        self.blueView.addGestureRecognizer(blueTapRecognizer)
        
        let greenTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedGreen))
        self.greenView.addGestureRecognizer(greenTapRecognizer)
    }
    
    @IBAction func tappedOrange(){
        let animatableView = self.orangeView!
        let animation = CABasicAnimation(keyPath: #keyPath(CALayer.cornerRadius))
        animation.duration = 1.0
        animation.fromValue = orangeView.layer.cornerRadius
        animation.toValue = orangeView.frame.height / 2
        animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animatableView.layer.add(animation, forKey: "cornerRadius")
        orangeView.layer.cornerRadius = orangeView.frame.height / 2
        
    }
    
    @IBAction func tappedCyan(){
        let animatableView = self.cyanView!
        let animation = CABasicAnimation(keyPath: #keyPath(CALayer.isHidden))
        animation.duration = 1.0
        animation.fromValue = false
        animation.toValue = true
        animation.timingFunction = CAMediaTimingFunction(name: .easeIn)
        animatableView.layer.add(animation, forKey: "opacity")
        cyanView.layer.isHidden = true
    }
    
    @IBAction func tappedBlue(){
        let viewPosition = CGPoint(x: cyanView.center.x, y: blueView.center.y)
        
        let moveAnimation = CABasicAnimation(keyPath: #keyPath(CALayer.position))
        moveAnimation.fromValue = blueView.center
        moveAnimation.toValue = viewPosition
        
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnimation.fromValue = 0
        rotationAnimation.toValue = NSNumber(value: Double.pi * 7 / 4)
        
        
        let groupAnimation = CAAnimationGroup()
        groupAnimation.animations = [moveAnimation, rotationAnimation]
        groupAnimation.duration =  2.0
        groupAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        blueView.layer.add(groupAnimation, forKey: "groupAnimation")
        blueView.transform = CGAffineTransform(rotationAngle: Double.pi * 7 / 4)
        blueView.layer.position =  viewPosition
    }
    
    @IBAction func tappedGreen(){
        let viewPosition = CGPoint(x: view.center.x, y: view.center.y)
        let moveAnimation = CABasicAnimation(keyPath: #keyPath(CALayer.position))
        moveAnimation.fromValue = greenView.center
        moveAnimation.toValue = viewPosition
        
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        let scaleValue: CGFloat = 1.5
        scaleAnimation.fromValue = 1.0
        scaleAnimation.toValue = 1.5
        
        let colorAnimation = CABasicAnimation(keyPath: #keyPath(CALayer.backgroundColor))
        colorAnimation.toValue = UIColor.magenta.cgColor
        
        let groupAnimation = CAAnimationGroup()
        groupAnimation.animations = [moveAnimation, scaleAnimation, colorAnimation]
        groupAnimation.duration =  1.0
        groupAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        groupAnimation.repeatCount = 2
        groupAnimation.autoreverses = true
        
        greenView.layer.add(groupAnimation, forKey: "groupAnimation")
        
        
    }
    
}
