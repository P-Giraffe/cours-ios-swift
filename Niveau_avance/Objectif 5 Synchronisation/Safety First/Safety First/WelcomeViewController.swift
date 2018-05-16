//
//  WelcomeViewController.swift
//  Safety First
//
//  Created by Maxime Britto on 16/05/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import UIKit
import RealmSwift

class WelcomeViewController: UIViewController {
    @IBOutlet weak var ui_nicknameField: UITextField!
    
    @IBOutlet weak var ui_loginActivityIndicator: UIActivityIndicatorView!
    
    @IBAction func loginButtonTouched() {
        guard let nickname = ui_nicknameField.text, nickname.count > 0 else { return }
        let userCredentials = SyncCredentials.nickname(nickname)
        let url = URL(string:"https://safetyfirst.us1.cloud.realm.io/")!
        SyncUser.logIn(with: userCredentials, server: url) { (user, _) in
            if let user = user {
                let realmUrl = URL(string:"realms://safetyfirst.us1.cloud.realm.io/~/vault")!
                let syncConfig = SyncConfiguration(user: user, realmURL: realmUrl)
            }
            self.ui_loginActivityIndicator.isHidden = true
        }
        ui_loginActivityIndicator.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
