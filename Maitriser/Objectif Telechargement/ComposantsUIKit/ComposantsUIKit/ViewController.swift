//
//  ViewController.swift
//  ComposantsUIKit
//
//  Created by Maxime Britto on 10/11/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func displayAlert() {
        let alertController = UIAlertController(title: "Attention", message: "Votre mot de passe n'est pas assez sécurisé", preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Supprimer", style: .destructive, handler: { (_) in
            //supprimer des données
        }))
        present(alertController, animated: true, completion: nil)
    }
    
}









