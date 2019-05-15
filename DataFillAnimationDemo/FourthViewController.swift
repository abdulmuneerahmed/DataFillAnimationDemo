//
//  FourthViewController.swift
//  DataFillAnimationDemo
//
//  Created by LogicalWings Mac on 09/05/19.
//  Copyright © 2019 Hiren Kadam. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var btnNext: UIButton!
    var firstShapeLayer = CAShapeLayer()
    var secondShapeLayer = CAShapeLayer()
    
    var layerAnimation = CABasicAnimation(keyPath: "path")
    
    var animationCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstShapeLayer.path = Shape1().cgPath
        firstShapeLayer.fillColor = UIColor.orange.cgColor
        self.view.layer.addSublayer(firstShapeLayer)
        
        layerAnimation.duration = 1
        layerAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        layerAnimation.fillMode = CAMediaTimingFillMode.forwards
        layerAnimation.isRemovedOnCompletion = false
        
        self.view.bringSubviewToFront(btnNext)
        
    }
    @IBAction func btnAction(_ sender: UIButton) {
        if animationCount == 1{
            setAnimation(toPath: Shape2())
        }else if animationCount == 2 {
            setAnimation(toPath: Shape3())
        }else if animationCount == 3 {
            setAnimation(toPath: Shape4())
        }else if animationCount == 4 {
            setAnimation(toPath: Shape5())
        }else if animationCount == 5 {
           setAnimation(toPath: Shape6())
        }else if animationCount == 6 {
            setAnimation(toPath: Shape7())
        }
        animationCount += 1
        
    }
    
    func Shape1() -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 200))
        path.addQuadCurve(to: CGPoint(x: 0, y: 20), controlPoint: CGPoint(x: self.view.frame.size.width/2, y: 200))
        path.close()
        return path
    }
    
    func Shape2() -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 250))
        path.addQuadCurve(to: CGPoint(x: 0, y: 300), controlPoint: CGPoint(x: self.view.frame.size.width/2, y: 350))
        path.close()
        return path
    }
    
    func Shape3() -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 400))
        path.addQuadCurve(to: CGPoint(x: 0, y: 300), controlPoint: CGPoint(x: self.view.frame.size.width/2, y: 400))
        path.close()
        return path
    }
    
    func Shape4() -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 450))
        path.addQuadCurve(to: CGPoint(x: 0, y: 600), controlPoint: CGPoint(x: self.view.frame.size.width/2, y: 600))
        path.close()
        return path
    }
    
    func Shape5() -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 800))
        path.addQuadCurve(to: CGPoint(x: 0, y: 700), controlPoint: CGPoint(x: self.view.frame.size.width/2, y: 800))
        path.close()
        return path
    }
    
    func Shape6() -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 800))
        path.addQuadCurve(to: CGPoint(x: 0, y: self.view.frame.size.height), controlPoint: CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height))
        path.close()
        return path
    }
    
    func Shape7() -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.view.frame.size.width, y: self.view.frame.size.height))
        path.addQuadCurve(to: CGPoint(x: 0, y: self.view.frame.size.height), controlPoint: CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height))
        path.close()
        return path
    }
    
    func setAnimation(toPath:UIBezierPath) {
        secondShapeLayer.path = toPath.cgPath
        secondShapeLayer.fillColor = UIColor.orange.cgColor
        
        layerAnimation.fromValue = firstShapeLayer.path
        layerAnimation.toValue = secondShapeLayer.path
        self.firstShapeLayer.add(layerAnimation, forKey: "animatePath")
        
        firstShapeLayer.path = toPath.cgPath
    }
    
}
