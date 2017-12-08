//
//  ViewController.swift
//  SecretNumber
//
//  Created by Maxime Britto on 08/12/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let _gameController = GameController()
    @IBOutlet weak var ui_guessedValueField: UITextField!
    @IBOutlet weak var ui_gameStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newGameButtonTouched() {
        _gameController.startNewGame()
        updateDisplay()
    }
    @IBAction func checkValueButtonTouched() {
        if let guessText = ui_guessedValueField.text,
            let guessInt = Int(guessText) {
            _gameController.checkGuessedValue(guessInt)
            updateDisplay()
        }
    }
    
    func updateDisplay() {
        if _gameController.isGameInProgress {
            ui_gameStatusLabel.text = "Essayez de trouver le nombre mystère"
            ui_guessedValueField.isHidden = false
        } else {
            ui_gameStatusLabel.text = nil
            ui_guessedValueField.isHidden = true
        }
    }
    
}






