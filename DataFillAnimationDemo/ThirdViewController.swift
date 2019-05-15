//
//  ThirdViewController.swift
//  DataFillAnimationDemo
//
//  Created by LogicalWings Mac on 08/05/19.
//  Copyright © 2019 Hiren Kadam. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    //var animationView = UIView()
    
    //var path = UIBezierPath()
    //let shapeLayer = CAShapeLayer()
    
    var firstShapeLayer = CAShapeLayer()
    var secondShapeLayer = CAShapeLayer()
    
    var layerAnimation = CABasicAnimation(keyPath: "path")
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var txt4: UITextField!
    @IBOutlet weak var imgLogi: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        firstShapeLayer.path = makeCurverShape(viewFrame: imgLogi.frame).cgPath
        firstShapeLayer.fillColor = UIColor.orange.cgColor
        self.view.layer.addSublayer(firstShapeLayer)
        bringAllViewForward()
        
        layerAnimation.duration = 1
        layerAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        layerAnimation.fillMode = CAMediaTimingFillMode.forwards
        layerAnimation.isRemovedOnCompletion = false
        
        
        //animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: imgLogi.frame.origin.y + imgLogi.bounds.height + 20)
        //self.view.addSubview(animationView)
        //self.view.sendSubviewToBack(animationView)
        //complexShape()
        
        //self.shape(viewWidth: self.view.frame.size.width, viewHeight: self.imgLogi.frame.origin.y + self.imgLogi.frame.size.height + 20)
        
        
    }
    
    func makeCurverShape(viewFrame : CGRect) -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: viewFrame.origin.y + viewFrame.size.height + 20))
        path.addQuadCurve(to: CGPoint(x: 0, y: viewFrame.origin.y + viewFrame.size.height + 20), controlPoint: CGPoint(x: self.view.frame.size.width/2, y: viewFrame.origin.y + viewFrame.size.height + 40))
        path.close()
        return path
    }
    
    func bringAllViewForward() {
        self.view.bringSubviewToFront(imgLogi)
        self.view.bringSubviewToFront(txt1)
        self.view.bringSubviewToFront(txt2)
        self.view.bringSubviewToFront(txt3)
        self.view.bringSubviewToFront(txt4)
    }
    
    func setAnimation(forView: UIView) {
        secondShapeLayer.path = makeCurverShape(viewFrame: forView.frame).cgPath
        secondShapeLayer.fillColor = UIColor.orange.cgColor
        
        layerAnimation.fromValue = firstShapeLayer.path
        layerAnimation.toValue = secondShapeLayer.path
        self.firstShapeLayer.add(layerAnimation, forKey: "animatePath")
        
        firstShapeLayer.path = makeCurverShape(viewFrame: forView.frame).cgPath
    }
    
    @IBAction func txt1Action(_ sender: UITextField) {
        setAnimation(forView: txt1)
    }
    
    @IBAction func txt2Action(_ sender: UITextField) {
        setAnimation(forView: txt2)
    }
    
    @IBAction func txt3Action(_ sender: UITextField) {
        setAnimation(forView: txt3)
    }
    
    @IBAction func txt4Action(_ sender: UITextField) {
        setAnimation(forView: txt4)
    }
    
    
    //  Thomas Alva Edison found 100 elements from which bulb cannot be made i found 3 ways in which layer animation cannot be made
    
    /*
     func complexShape() {
     
     path = UIBezierPath()
     
     self.path.move(to: CGPoint(x: 0.0, y: 0.0))
     self.path.addLine(to: CGPoint(x: self.animationView.frame.size.width, y: 0.0))
     self.path.addLine(to: CGPoint(x: self.animationView.frame.size.width, y: self.animationView.frame.size.height))
     self.path.addQuadCurve(to: CGPoint(x: 0, y: self.animationView.frame.size.height), controlPoint: CGPoint(x: self.animationView.frame.size.width/2, y: self.animationView.frame.size.height + 20))
     self.path.close()
     
     shapeLayer.path = self.path.cgPath
     shapeLayer.fillColor = UIColor.orange.cgColor
     
     self.animationView.layer.addSublayer(shapeLayer)
     
     self.animationView.backgroundColor = UIColor.red
     //self.animationView.backgroundColor = UIColor.orange
     //self.animationView.layer.mask = shapeLayer
     
     }
     */
    
    /*
     func shape(viewWidth: CGFloat,viewHeight: CGFloat) {
     
     path = UIBezierPath()
     
     self.path.move(to: CGPoint(x: 0.0, y: 0.0))
     self.path.addLine(to: CGPoint(x: viewWidth, y: 0.0))
     self.path.addLine(to: CGPoint(x: viewWidth, y: viewHeight))
     self.path.addQuadCurve(to: CGPoint(x: 0, y: viewHeight), controlPoint: CGPoint(x: viewWidth/2, y: viewHeight + 20))
     self.path.close()
     
     shapeLayer.path = self.path.cgPath
     shapeLayer.fillColor = UIColor.orange.cgColor
     
     //setAnimation()
     
     self.view.layer.addSublayer(shapeLayer)
     
     self.view.bringSubviewToFront(imgLogi)
     self.view.bringSubviewToFront(txt1)
     self.view.bringSubviewToFront(txt2)
     self.view.bringSubviewToFront(txt3)
     self.view.bringSubviewToFront(txt4)
     }
     
     func setAnimation() {
     let zoomAnimation = CABasicAnimation()
     zoomAnimation.duration = 2.0
     zoomAnimation.keyPath = "path"
     zoomAnimation.fromValue = CGRect(x: self.shapeLayer.frame.origin.x, y: self.shapeLayer.frame.origin.y, width: self.shapeLayer.frame.size.width, height: self.shapeLayer.frame.size.height)
     zoomAnimation.toValue = CGRect(x: self.shapeLayer.frame.origin.x, y: self.shapeLayer.frame.origin.y, width: self.shapeLayer.frame.width, height: 700)
     zoomAnimation.fillMode = CAMediaTimingFillMode.forwards
     zoomAnimation.isRemovedOnCompletion = false
     shapeLayer.fillColor = UIColor.yellow.cgColor
     shapeLayer.add(zoomAnimation, forKey: "zoom")
     }
     */
    
}

extension CGFloat {
    func toRadians() -> CGFloat {
        return self * CGFloat(M_PI) / 180.0
    }
}
