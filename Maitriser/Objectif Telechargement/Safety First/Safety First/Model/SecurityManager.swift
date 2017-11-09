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
    private static let TOP_100_PASSWORD_URL = "https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/10_million_password_list_top_100.txt"
    
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
        Alamofire.request(SecurityManager.TOP_100_PASSWORD_URL)
    }
    
    
    
    
}
