//
//  ViewController.swift
//  UIKitAnimation
//
//  Created by Maxime Britto on 19/12/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ui_demoView: UIView!
    @IBOutlet weak var cs_demoViewLeading: NSLayoutConstraint!
    
    @IBOutlet weak var cs_demoViewHeight: NSLayoutConstraint!
    @IBAction func animate() {
        cs_demoViewHeight.constant = 300
        UIView.animate(withDuration: 1.00, delay: 0, usingSpringWithDamping: 0.35, initialSpringVelocity: 30, options: [], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        
        /*
        UIView.animate(withDuration: 1.0, delay: 0.5, options: [.curveEaseIn], animations: {
            self.ui_demoView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
            self.ui_demoView.alpha = 0.25
        }) { (_) in
            UIView.animate(withDuration: 1.0, animations: {
                self.ui_demoView.center = self.view.center
            })
        }
        */
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

