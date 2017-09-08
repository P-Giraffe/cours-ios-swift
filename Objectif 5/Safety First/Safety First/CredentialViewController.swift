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
    
    override func viewWillAppear(_ animated: Bool) {
        displayBasicData()
    }
    private func displayBasicData() {
        if let cred = _credentials {
            ui_loginLabel.text = "Identifiant : \(cred.login)"
            ui_urlLabel.text = "Site Web : \(cred.url)"
        }
    }
    
    @IBAction func displayPassword(_ sender: Any) {
        if let cred = _credentials {
            ui_passwordLabel.text = "Mot de passe : \(cred.password)"
        }
    }
    
    @IBAction func copyPasswordToClipboard(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

