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
    
    func getInputMeterValue() -> Double? {
        let inputMeters:Double?
        if let inputString:String = ui_inputValueField.text,
            let inputDouble:Double = Double(inputString) {
            switch ui_inputValueType.selectedSegmentIndex {
            case 0: //m
                inputMeters = inputDouble
            case 1: //cm
                inputMeters = UnitLength.centimeters.converter.baseUnitValue(fromValue: inputDouble)
            case 2: //inches
                inputMeters = UnitLength.inches.converter.baseUnitValue(fromValue: inputDouble)
            default:
                inputMeters = nil
            }
        } else {
            inputMeters = nil
        }
        
        return inputMeters
    }
    
    func convertInputValue() {
        if let inputMeters:Double = getInputMeterValue() {
            ui_outputMeterLabel.text = "\(inputMeters) m"
            ui_outputInchesLabel.text = "\(UnitLength.inches.converter.value(fromBaseUnitValue: inputMeters)) pouces"
            ui_outputCentimeterLabel.text = "\(UnitLength.centimeters.converter.value(fromBaseUnitValue: inputMeters)) cm"
        } else {
            ui_outputCentimeterLabel.text = nil
            ui_outputInchesLabel.text = nil
            ui_outputMeterLabel.text = nil
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

