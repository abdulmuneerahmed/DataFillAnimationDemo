//
//  BaseViewController.swift
//  DataFillAnimationDemo
//
//  Created by LogicalWings Mac on 06/05/19.
//  Copyright © 2019 Hiren Kadam. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var animationView = UIView()
    var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func addAnimationView(tillView: UIView) {
        
        self.animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: tillView.frame.origin.y + tillView.frame.size.height + 40)
        
        self.imageView.contentMode = .scaleToFill
        
        self.imageView.image = UIImage(named: "bgred")
        self.imageView.frame = CGRect(x: 0, y: 0, width: self.animationView.frame.width, height: self.animationView.frame.height)
        
        //self.animationView.backgroundColor = UIColor.red
        //self.applyCurvedPath(givenView: animationView, curvedPercent: 0.2)
        
        self.animationView.addSubview(imageView)
        self.view.addSubview(animationView)
        self.view.sendSubviewToBack(animationView)
    }
    
    func zizagAnim1() {
        self.imageView.backgroundColor = UIColor.red
        self.imageView.frame = CGRect(x: -(self.view.frame.size.width-100), y: -(self.view.frame.size.width + 500), width: self.view.frame.size.width * 3, height: self.view.frame.size.width * 3)
        self.imageView.roundCorners([.topLeft,.topRight,.bottomRight,.bottomLeft], radius: 500)
        
        self.animationView.addSubview(imageView)
        self.view.addSubview(animationView)
        self.view.sendSubviewToBack(animationView)
    }
    
    func zizagAnim2() {
        self.imageView.backgroundColor = UIColor.red
        self.imageView.frame = CGRect(x: -(self.view.frame.size.width + 100), y: -(self.view.frame.size.width+400), width: self.view.frame.size.width * 3, height: self.view.frame.size.width * 3)
        self.imageView.roundCorners([.topLeft,.topRight,.bottomRight,.bottomLeft], radius: 500)
        
        self.animationView.addSubview(imageView)
        self.view.addSubview(animationView)
        self.view.sendSubviewToBack(animationView)
    }
    
    func zizagAnim3() {
        self.imageView.backgroundColor = UIColor.red
        self.imageView.frame = CGRect(x: -(self.view.frame.size.width - 100), y: -(self.view.frame.size.width+300), width: self.view.frame.size.width * 3, height: self.view.frame.size.width * 3)
        self.imageView.roundCorners([.topLeft,.topRight,.bottomRight,.bottomLeft], radius: 500)
        
        self.animationView.addSubview(imageView)
        self.view.addSubview(animationView)
        self.view.sendSubviewToBack(animationView)
    }
    
    func zizagAnim4() {
        self.imageView.backgroundColor = UIColor.red
        self.imageView.frame = CGRect(x: -(self.view.frame.size.width + 100), y: -(self.view.frame.size.width+200), width: self.view.frame.size.width * 3, height: self.view.frame.size.width * 3)
        self.imageView.roundCorners([.topLeft,.topRight,.bottomRight,.bottomLeft], radius: 500)
        
        self.animationView.addSubview(imageView)
        self.view.addSubview(animationView)
        self.view.sendSubviewToBack(animationView)
    }
    
    func zizagAnim5() {
        self.imageView.backgroundColor = UIColor.red
        self.imageView.frame = CGRect(x: -(self.view.frame.size.width - 100), y: -(self.view.frame.size.width+100), width: self.view.frame.size.width * 3, height: self.view.frame.size.width * 3)
        self.imageView.roundCorners([.topLeft,.topRight,.bottomRight,.bottomLeft], radius: 500)
        
        self.animationView.addSubview(imageView)
        self.view.addSubview(animationView)
        self.view.sendSubviewToBack(animationView)
    }
    
    func zizagAnim6() {
        self.imageView.backgroundColor = UIColor.red
        self.imageView.frame = CGRect(x: -(self.view.frame.size.width + 100), y: -(self.view.frame.size.width), width: self.view.frame.size.width * 3, height: self.view.frame.size.width * 3)
        self.imageView.roundCorners([.topLeft,.topRight,.bottomRight,.bottomLeft], radius: 500)
        
        self.animationView.addSubview(imageView)
        self.view.addSubview(animationView)
        self.view.sendSubviewToBack(animationView)
    }
    
    func zizagAnim7() {
        self.imageView.backgroundColor = UIColor.red
        self.imageView.frame = CGRect(x: -(self.view.frame.size.width - 100), y: -(self.view.frame.size.width - 100), width: self.view.frame.size.width * 3, height: self.view.frame.size.width * 3)
        self.imageView.roundCorners([.topLeft,.topRight,.bottomRight,.bottomLeft], radius: 500)
        
        self.animationView.addSubview(imageView)
        self.view.addSubview(animationView)
        self.view.sendSubviewToBack(animationView)
    }
    
    /*
    func pathCurvedForView(givenView: UIView, curvedPercent:CGFloat) ->UIBezierPath
    {
        let arrowPath = UIBezierPath()
        arrowPath.move(to: CGPoint(x:0, y:0))
        arrowPath.addLine(to: CGPoint(x:givenView.bounds.size.width, y:0))
        arrowPath.addLine(to: CGPoint(x:givenView.bounds.size.width, y:givenView.bounds.size.height - (givenView.bounds.size.height*curvedPercent)))
        arrowPath.addQuadCurve(to: CGPoint(x:0, y:givenView.bounds.size.height - (givenView.bounds.size.height*curvedPercent)), controlPoint: CGPoint(x:givenView.bounds.size.width/2, y:givenView.bounds.size.height))
        arrowPath.addLine(to: CGPoint(x:0, y:0))
        arrowPath.close()
        
        return arrowPath
    }
    
    func applyCurvedPath(givenView: UIView,curvedPercent:CGFloat) {
        guard curvedPercent <= 1 && curvedPercent >= 0 else{
            return
        }
        
        let shapeLayer = CAShapeLayer(layer: givenView.layer)
        shapeLayer.path = self.pathCurvedForView(givenView: givenView,curvedPercent: curvedPercent).cgPath
        shapeLayer.frame = givenView.bounds
        shapeLayer.masksToBounds = true
        givenView.layer.mask = shapeLayer
    }
    */
}
