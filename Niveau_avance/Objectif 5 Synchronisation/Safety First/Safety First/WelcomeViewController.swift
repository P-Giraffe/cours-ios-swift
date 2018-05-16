//
//  WelcomeViewController.swift
//  Safety First
//
//  Created by Maxime Britto on 16/05/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var ui_nicknameField: UITextField!
    
    @IBOutlet weak var ui_loginActivityIndicator: UIActivityIndicatorView!
    
    @IBAction func loginButtonTouched() {
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
