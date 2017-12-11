//
//  IntExtensions.swift
//  SecretNumber
//
//  Created by Maxime Britto on 11/12/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation

extension Int {
    init(withRandomNumberBetween minValue:Int, and maxValue:Int) {
        self = minValue + Int(arc4random_uniform(UInt32(maxValue-minValue+1)))
    }
}
