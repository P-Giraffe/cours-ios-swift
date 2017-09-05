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
}
