//
//  VaultManager.swift
//  Safety First
//
//  Created by Maxime Britto on 27/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation
import RealmSwift

class VaultManager {
    private var _vault:Vault?
    
    func getMainVault() -> Vault? {
        let realm = try! Realm()
        return Vault(withRealm: realm)
    }
}
