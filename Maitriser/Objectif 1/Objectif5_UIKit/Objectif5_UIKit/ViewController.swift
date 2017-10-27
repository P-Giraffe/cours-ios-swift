//
//  ViewController.swift
//  Objectif5_UIKit
//
//  Created by Maxime Britto on 08/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ui_textField: UITextField!
    @IBOutlet weak var ui_pasteTextButton: UIButton!
    
    @IBAction func returnHome(_ segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func copyTextToClipboard() {
        if let text = ui_textField.text {
            UIPasteboard.general.string = text
        }
    }
    
    @IBAction func pasteTextFromClipboard() {
        ui_textField.text = UIPasteboard.general.string
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let pressePapier = UIPasteboard.general
        ui_pasteTextButton.isHidden = (pressePapier.hasStrings == false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue-ecran-2" {
            if let text = ui_textField.text,
                let prochainEcran = segue.destination as? SecondViewController {
                prochainEcran.textToDisplay = text
            }
        }
    }

}

