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
        var possibleKey:Data?
        //charger la clee
        possibleKey = loadRealmEncryptionKey()
        
        //si pas de clée generer une nouvelle clée
        if possibleKey == nil {
            possibleKey = generateRealmEncryptionKey()
        }
        
        //config realm avec cette clee
        if let realmEncyptionKey = possibleKey {
            let realmConf = Realm.Configuration(encryptionKey: realmEncyptionKey)
            let realm = try! Realm(configuration: realmConf)
            _vault = Vault(withRealm: realm)
        }
        
        return _vault
    }
    
    private func loadRealmEncryptionKey() -> Data? {
        return nil
    }
    
    private func generateRealmEncryptionKey() -> Data? {
        return nil
    }
    
}





