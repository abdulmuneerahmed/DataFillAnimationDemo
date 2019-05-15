//
//  ViewController.swift
//  DataFillAnimationDemo
//
//  Created by LogicalWings Mac on 06/05/19.
//  Copyright © 2019 Hiren Kadam. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var txt4: UITextField!
    @IBOutlet weak var imgLogi: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        addAnimationView(tillView: imgLogi)
    }
    
    
    @IBAction func edittxt1(_ sender: UITextField) {
        UIView.animate(withDuration: 1.0) {
            self.addAnimationView(tillView: self.txt1)
        }
    }
    
    @IBAction func editbegintxt2(_ sender: UITextField) {
        UIView.animate(withDuration: 1.0) {
            self.addAnimationView(tillView: self.txt2)
        }
    }
    @IBAction func editbegintxt3(_ sender: UITextField) {
        UIView.animate(withDuration: 1.0) {
            self.addAnimationView(tillView: self.txt3)
        }
    }
    @IBAction func editbegintxt4(_ sender: UITextField) {
        UIView.animate(withDuration: 1.0) {
            self.addAnimationView(tillView: self.txt4)
        }
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    
}

