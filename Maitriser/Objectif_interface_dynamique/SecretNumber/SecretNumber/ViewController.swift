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
    var _gameRangeToScreenRatio:CGFloat = 1
    let _gameController = GameController()
    @IBOutlet weak var ui_guessedValueField: UITextField!
    @IBOutlet weak var ui_gameStatusLabel: UILabel!
    @IBOutlet weak var ui_lowBoundaryLabel: UILabel!
    @IBOutlet weak var ui_boundaryZone: UIView!
    
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
        let barWidth:CGFloat = self.view.bounds.width
            - self.view.safeAreaInsets.left
            - self.view.safeAreaInsets.right
            - 2 * ViewController.BORDER_MARGIN
        _gameRangeToScreenRatio = barWidth / CGFloat(GameController.MAX_VALUE - GameController.MIN_VALUE)
        updateDisplay()
        super.viewWillLayoutSubviews()
    }
    
    func updateDisplay() {
        if _gameController.isGameInProgress {
            if ui_boundaryZone.isHidden != false {
                UIView.transition(with: ui_boundaryZone, duration: 0.3, options: [.transitionCurlDown], animations: {
                    self.ui_boundaryZone.isHidden = false
                }, completion: nil)
                
                ui_gameStatusLabel.text = "Essayez de trouver le nombre mystère"
                ui_guessedValueField.isHidden = false
                ui_checkValueButton.isHidden = false
                UIView.animate(withDuration: 0.4, animations: {
                    self.view.layoutIfNeeded()
                })
            }
            ui_lowBoundaryLabel.text = String(_gameController.lowBoundary)
            ui_highBoundaryLabel.text = String(_gameController.highBoundary)

            cs_boundaryZoneLeading.constant = ViewController.BORDER_MARGIN + CGFloat(_gameController.lowBoundary) * _gameRangeToScreenRatio
            cs_boundaryZoneTrailing.constant = ViewController.BORDER_MARGIN + CGFloat(GameController.MAX_VALUE - _gameController.highBoundary) * _gameRangeToScreenRatio
            
            UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.45, initialSpringVelocity: 10, options: [], animations: {
                self.view.layoutIfNeeded()
            }, completion: nil)
            
        } else {
            ui_gameStatusLabel.text = nil
            ui_guessedValueField.isHidden = true
            ui_checkValueButton.isHidden = true
            if ui_boundaryZone.isHidden != true {
                UIView.transition(with: ui_boundaryZone, duration: 0.3, options: [.transitionCurlUp], animations: {
                    self.ui_boundaryZone.isHidden = true
                }, completion: nil)
            }
            
        }
    }
    
}






