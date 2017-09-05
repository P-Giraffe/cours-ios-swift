//
//  CredentialsManager.swift
//  Safety First
//
//  Created by Maxime Britto on 05/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation
import RealmSwift

class CredentialsManager {
    private let _realm:Realm
    private let _credentialList:Results<Credentials>
    
    init() {
        _realm = try! Realm()
        _credentialList = _realm.objects(Credentials.self)
    }
    
    func addCredentials(title:String, login:String, password:String, url:String) -> Credentials {
        let newCredential = Credentials()
        newCredential.title = title
        newCredential.login = login
        newCredential.password = password
        newCredential.url = url
        
        try? _realm.write {
            _realm.add(newCredential)
        }
        return newCredential
    }
    
    func getCredentialCount() -> Int {
        return _credentialList.count
    }
    
    func getCredential(atIndex index:Int) -> Credentials? {
        guard index >= 0 && index < getCredentialCount() else {
            return nil
        }
    
        return _credentialList[index]
    }
    
    func deleteCredential(atIndex index:Int) {
        if let credToDelete = getCredential(atIndex: index) {
            try? _realm.write {
                _realm.delete(credToDelete)
            }
        }
    }
}





