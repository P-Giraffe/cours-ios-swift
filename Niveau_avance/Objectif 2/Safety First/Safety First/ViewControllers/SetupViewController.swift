//
//  SetupViewController.swift
//  Safety First
//
//  Created by Maxime Britto on 28/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit

class SetupViewController: UIViewController {

    @IBOutlet weak var ui_passwordField2: UITextField!
    @IBOutlet weak var ui_passwordField1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func getTypedPassword() -> String? {
        let password:String?
        if let password1 = ui_passwordField1.text,
            let password2 = ui_passwordField2.text,
            password1.count > 0,
            password1 == password2 {
            password = password1
        } else {
            password = nil
        }
        return password
    }
    
    // MARK: - Navigation
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return getTypedPassword() != nil
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let password = getTypedPassword()
        {
            VaultManager().saveMasterPassword(password)
        }
    }
    

}
