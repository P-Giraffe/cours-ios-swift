//
//  Player.swift
//  realm_demo
//
//  Created by Maxime Britto on 12/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation
import RealmSwift

class Player : Object {
    @objc private dynamic var _name:String = ""
    @objc private dynamic var _score:Int = 0
    
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }
    
    var score: Int {
        get {
            return _score
        }
        set {
            if newValue >= 0 {
                _score = newValue
            }
        }
    }
}
