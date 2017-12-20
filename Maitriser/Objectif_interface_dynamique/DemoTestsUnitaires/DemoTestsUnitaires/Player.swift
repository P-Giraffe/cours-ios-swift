//
//  Player.swift
//  DemoTestsUnitaires
//
//  Created by Maxime Britto on 20/12/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation
class Player {
    private var _score:Int = 0
    private var _level:Int = 1
    
    func getLevel() -> Int {
        return _level
    }
    
    func changeScore(newScore:Int) {
        _score = newScore
        updateLevel()
    }
    
    private func updateLevel() {
        if _score < 10 {
            _level = 1
        } else if _score < 20 {
            _level = 2
        } else if _score < 30 {
            _level = 3
        } else {
            _level = 4
        }
    }
}
