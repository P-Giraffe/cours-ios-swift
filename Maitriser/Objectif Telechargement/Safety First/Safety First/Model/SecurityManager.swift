//
//  SecurityManager.swift
//  Safety First
//
//  Created by Maxime Britto on 09/11/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation
import Alamofire

class SecurityManager {
    struct SecurityAnswer {
        let result:Bool
        let message:String?
    }
    private static let TOP_100_PASSWORD_URL = "https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/10_million_password_list_top_100.txt"
    
    private var _forbiddenPasswordList:[String]? = nil
    
    private static var s_securityManager:SecurityManager? = nil
    
    public static var shared:SecurityManager {
        if s_securityManager == nil {
            s_securityManager = SecurityManager()
        }
        
        return s_securityManager!
    }
    
    private init() {
        
    }
    
    
    func downloadPasswordsFile() {
        Alamofire.request(SecurityManager.TOP_100_PASSWORD_URL).responseString { (response) in
            if let passwordList = response.result.value {
                self._forbiddenPasswordList = passwordList.components(separatedBy: "\n")
            }
        }
    }
    
    func isPasswordSafe(password:String) -> SecurityAnswer {
        let answer:SecurityAnswer
        if let forbiddenPasswordList = _forbiddenPasswordList {
            if forbiddenPasswordList.contains(password) {
                answer = SecurityAnswer(result: false, message: "Ce mot de passe fait partie des 100 plus utilisés")
            } else {
                answer = SecurityAnswer(result: true, message: nil)
            }
        } else {
            answer = SecurityAnswer(result: false, message: "Le gestionnaire de sécurité n'est pas prêt")
        }
        return answer
    }
    
    
}
