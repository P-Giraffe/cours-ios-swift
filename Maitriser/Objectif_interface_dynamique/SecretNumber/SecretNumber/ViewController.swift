//
//  ViewController.swift
//  SecretNumber
//
//  Created by Maxime Britto on 08/12/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static let BORDER_MARGIN:CGFloat = 16
    let _gameController = GameController()
    @IBOutlet weak var ui_guessedValueField: UITextField!
    @IBOutlet weak var ui_gameStatusLabel: UILabel!
    @IBOutlet weak var ui_lowBoundaryLabel: UILabel!
    
    @IBOutlet weak var ui_checkValueButton: UIButton!
    @IBOutlet weak var cs_boundaryZoneLeading: NSLayoutConstraint! {
        didSet {
            cs_boundaryZoneLeading.constant = ViewController.BORDER_MARGIN
        }
    }
    @IBOutlet weak var cs_boundaryZoneTrailing: NSLayoutConstraint! {
        didSet {
            cs_boundaryZoneTrailing.constant = ViewController.BORDER_MARGIN
        }
    }
    @IBOutlet weak var ui_highBoundaryLabel: UILabel!
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
            ui_guessedValueField.text = nil
            updateDisplay()
        }
    }
    
    override func viewWillLayoutSubviews() {
        updateDisplay()
        super.viewWillLayoutSubviews()
    }
    
    func updateDisplay() {
        if _gameController.isGameInProgress {
            let barWidth:CGFloat = self.view.bounds.width
                - self.view.safeAreaInsets.left
                - self.view.safeAreaInsets.right
                - 2 * ViewController.BORDER_MARGIN
            let gameRangeToScreenRatio = barWidth / CGFloat(GameController.MAX_VALUE - GameController.MIN_VALUE)
            ui_gameStatusLabel.text = "Essayez de trouver le nombre mystère"
            ui_guessedValueField.isHidden = false
            ui_checkValueButton.isHidden = false
            
            ui_lowBoundaryLabel.text = String(_gameController.lowBoundary)
            ui_highBoundaryLabel.text = String(_gameController.highBoundary)
            
            cs_boundaryZoneLeading.constant = ViewController.BORDER_MARGIN + CGFloat(_gameController.lowBoundary) * gameRangeToScreenRatio
            cs_boundaryZoneTrailing.constant = ViewController.BORDER_MARGIN + CGFloat(GameController.MAX_VALUE - _gameController.highBoundary) * gameRangeToScreenRatio
            
        } else {
            ui_gameStatusLabel.text = nil
            ui_guessedValueField.isHidden = true
            ui_checkValueButton.isHidden = true
        }
    }
    
}






