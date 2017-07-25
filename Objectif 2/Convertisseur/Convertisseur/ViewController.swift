//
//  ViewController.swift
//  Convertisseur
//
//  Created by Maxime Britto on 25/07/2017.
//  Copyright © 2017 Purple Giraffe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ui_inputValueType: UISegmentedControl!
    @IBOutlet weak var ui_inputValueField: UITextField!
    
    @IBOutlet weak var ui_outputMeterLabel: UILabel!
    @IBOutlet weak var ui_outputCentimeterLabel: UILabel!
    @IBOutlet weak var ui_outputInchesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func convertInputValue() {
        if let inputString:String = ui_inputValueField.text,
            let inputDouble:Double = Double(inputString) {
            
        }
     
    }
    
    @IBAction func inputValueTypeChanged() {
        convertInputValue()
    }
    
    @IBAction func inputValueChanged() {
        convertInputValue()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

