//
//  GameController.swift
//  SecretNumber
//
//  Created by Maxime Britto on 08/12/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation

class GameController {
    static let MIN_VALUE = 0
    static let MAX_VALUE = 100
    private var _secretNumber:Int?
    private var _lastGuessedValue:Int?
    private var _lowBoundary:Int = GameController.MIN_VALUE
    private var _highBoundary:Int = GameController.MAX_VALUE
    
    var lowBoundary: Int {
        return _lowBoundary
    }
    
    var highBoundary: Int {
        return _highBoundary
    }
    
    var isGameInProgress: Bool {
        guard let secretNumber = _secretNumber else { return false }
        
        return _lastGuessedValue == nil || _lastGuessedValue! != secretNumber
    }
    
    var secretNumber: Int? {
        return _secretNumber
    }
    
    func startNewGame(withSecretNumber secretNumber:Int?=nil) {
        if secretNumber != nil {
            _secretNumber = secretNumber
        } else {
            _secretNumber = 50
        }
        _lastGuessedValue = nil
    }
    
    func checkGuessedValue(_ value:Int) {
        guard let secretNumber = _secretNumber else { return }
        
        _lastGuessedValue = value
        if value != secretNumber {
            if value < secretNumber {
                _lowBoundary = max(_lowBoundary, value)
            } else {
                _highBoundary = min(_highBoundary, value)
            }
        }
    }
    
    
}
