//
//  DataExtension.swift
//  Safety First
//
//  Created by Maxime Britto on 27/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation

extension Data {
    init?(countOfRandomData:Int) {
        self.init(count:countOfRandomData)
        let result = self.withUnsafeMutableBytes {
            SecRandomCopyBytes(kSecRandomDefault, countOfRandomData, $0)
        }
        if result != errSecSuccess {
            return nil
        }
    }
}
