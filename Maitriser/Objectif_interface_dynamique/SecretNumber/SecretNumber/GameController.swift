//
//  GameController.swift
//  SecretNumber
//
//  Created by Maxime Britto on 08/12/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation

class GameController {
    private var _secretNumber:Int?
    private var _lastGuessedValue:Int?
    
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
        _lastGuessedValue = value
    }
    
    
}
