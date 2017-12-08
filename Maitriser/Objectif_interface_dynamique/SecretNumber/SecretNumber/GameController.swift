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
        return true
    }
    
    var secretNumber: Int? {
        return _secretNumber
    }
    
    func startNewGame() {
        
    }
    
    func checkGuessedValue(_ value:Int) {
        
    }
}
