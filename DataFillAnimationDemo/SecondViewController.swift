//
//  SecondViewController.swift
//  DataFillAnimationDemo
//
//  Created by LogicalWings Mac on 07/05/19.
//  Copyright © 2019 Hiren Kadam. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {

    var animationCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        zizagAnim1()
        animationCount = 1
    }
    @IBAction func btnNextAction(_ sender: UIButton) {
        if animationCount == 1{
            UIView.animate(withDuration: 1.0) {
                self.zizagAnim2()
            }
        }else if animationCount == 2 {
            UIView.animate(withDuration: 1.0) {
                self.zizagAnim3()
            }
        }else if animationCount == 3 {
            UIView.animate(withDuration: 1.0) {
                self.zizagAnim4()
            }
        }else if animationCount == 4 {
            UIView.animate(withDuration: 1.0) {
                self.zizagAnim5()
            }
        }else if animationCount == 5 {
            UIView.animate(withDuration: 1.0) {
                self.zizagAnim6()
            }
        }else if animationCount == 6 {
            UIView.animate(withDuration: 1.0) {
                self.zizagAnim7()
            }
        }
        animationCount += 1
    }
}
