//
//  ViewController.swift
//  LifeGoals
//
//  Created by Maxime Britto on 31/07/2017.
//  Copyright © 2017 Purple Giraffe. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
    let _goalManager = GoalManager()
    
    @IBOutlet weak var ui_newGoalTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ui_newGoalTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        textField.text = nil
        textField.resignFirstResponder()
        return false
    }


}

