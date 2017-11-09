//
//  ViewController.swift
//  Safety First
//
//  Created by Maxime Britto on 05/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit
import RealmSwift

class CredentialViewController: UIViewController {
    private var _credentials:Credentials?
    
    func setCredentials(_ credentials:Credentials) {
        _credentials = credentials
    }
    
    @IBOutlet weak var ui_loginLabel: UILabel!
    @IBOutlet weak var ui_passwordLabel: UILabel!
    @IBOutlet weak var ui_urlLabel: UILabel!
    @IBOutlet weak var ui_securityWarningButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        displayBasicData()
    }
    private func displayBasicData() {
        if let cred = _credentials {
            self.title = cred.title
            ui_loginLabel.text = "Identifiant : \(cred.login)"
            ui_urlLabel.text = "Site Web : \(cred.url)"
            
            if cred.isPasswordSafe.result {
                ui_securityWarningButton.isHidden = true
            } else {
                ui_securityWarningButton.isHidden = false
            }
        }
    }
    
    @IBAction func displayPassword(_ sender: Any) {
        if let cred = _credentials {
            ui_passwordLabel.text = "Mot de passe : \(cred.password)"
        }
    }
    
    @IBAction func copyPasswordToClipboard(_ sender: Any) {
        if let cred = _credentials {
            UIPasteboard.general.string = cred.password
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func securityWarningButtonTouched() {
    }
    
}

