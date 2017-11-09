//
//  SecurityManager.swift
//  Safety First
//
//  Created by Maxime Britto on 09/11/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import Foundation

class SecurityManager {
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
        
    }
    
    
    
    
}
