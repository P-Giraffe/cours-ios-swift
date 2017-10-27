//
//  VaultManager.swift
//  Safety First
//
//  Created by Maxime Britto on 27/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation
import RealmSwift
import KeychainAccess

class VaultManager {
    private static let REALM_ENCRYPTION_KEY = "REALM_ENCRYPTION_KEY"
    private static let MASTER_PASSWORD = "SAFETY_FIRST_MASTER_PASSWORD"
    private var _vault:Vault?
    private var _keychain:Keychain
    
    init() {
        _keychain = Keychain(service: Bundle.main.bundleIdentifier ?? "fr.purplegiraffe.ios.Safety-First")
    }
    func getMainVault() -> Vault? {
        var possibleKey:Data?
        //charger la clée
        possibleKey = loadRealmEncryptionKey()
        
        //si pas de clée générer une nouvelle clée
        if possibleKey == nil {
            possibleKey = generateRealmEncryptionKey()
        }
        
        //config realm avec cette clée
        if let realmEncyptionKey = possibleKey {
            let realmConf = Realm.Configuration(encryptionKey: realmEncyptionKey)
            let realm = try! Realm(configuration: realmConf)
            _vault = Vault(withRealm: realm)
        }
        
        return _vault
    }
    
    private func loadRealmEncryptionKey() -> Data? {
        return _keychain[data: VaultManager.REALM_ENCRYPTION_KEY]
    }
    
    private func generateRealmEncryptionKey() -> Data? {
        guard let generatedData = Data(countOfRandomData: 64) else {
            return nil
        }
        
        try! _keychain.set(generatedData, key: VaultManager.REALM_ENCRYPTION_KEY)
        return generatedData
    }
    
    func saveMasterPassword(_ password:String) {
        _keychain[VaultManager.MASTER_PASSWORD] = password
    }
    
    func getMasterPassword() -> String? {
        return _keychain[VaultManager.MASTER_PASSWORD]
    }
    
    func hasMasterPassword() -> Bool {
        return getMasterPassword() != nil
    }
    
}











