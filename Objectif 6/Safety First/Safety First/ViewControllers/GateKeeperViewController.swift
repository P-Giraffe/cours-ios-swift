//
//  GateKeeperViewController.swift
//  Safety First
//
//  Created by Maxime Britto on 28/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit

class GateKeeperViewController: UIViewController {

    @IBOutlet weak var ui_passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let vaultManager = VaultManager()
        if vaultManager.hasMasterPassword() == false {
            performSegue(withIdentifier: "setup-new-vault", sender: nil)
        }
    }
    
    @IBAction func savedInitialSetup(_ segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func unlockWithPassword() {
        //Verifier mot de passe
        let vaultManager = VaultManager()
        if let typedPassword = ui_passwordField.text,
            let vaultPassword = vaultManager.getMasterPassword(),
            typedPassword == vaultPassword
        {
            displayVaultViewController()
        }
    }
    
    func displayVaultViewController() {
        if let vaultVC = storyboard?.instantiateViewController(withIdentifier: "VaultViewController") as? VaultViewController {
            show(vaultVC, sender: nil)
        }
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
