//
//  ViewController.swift
//  ComposantsUIKit
//
//  Created by Maxime Britto on 20/07/2017.
//  Copyright © 2017 Purple Giraffe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var ui_emailField: UITextField!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("L'edition a commencé")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("La personne a appuyé sur return")
        textField.resignFirstResponder()
        return false
    }
    
    @IBAction func directionDidChange(_ sender: UISegmentedControl) {
        print("Nouvelle direction selectionnée : \(sender.selectedSegmentIndex)")
        print(sender.titleForSegment(at: sender.selectedSegmentIndex)!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ui_emailField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

