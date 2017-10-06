//
//  ViewController.swift
//  Objectif6_UIKit
//
//  Created by Maxime Britto on 05/10/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit
import MobileCoreServices
import LocalAuthentication

class ViewController: UIViewController {
    @IBOutlet weak var ui_mainLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        //Declenchement de segue manuellement
        //performSegue(withIdentifier: "display-modal-screen", sender: nil)
        
        //Affichage d'écran sans segue
//        if let nextScreen = storyboard?.instantiateViewController(withIdentifier: "ModalScreen") {
//            present(nextScreen, animated: true, completion: nil)
//        }
        
        let context = LAContext()
        if context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthentication, error: nil) {
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthentication, localizedReason: "Prouvez votre identité", reply: { (isOwner, error) in
                DispatchQueue.main.async {
                    if let err = error {
                        self.ui_mainLabel.text = err.localizedDescription
                    } else if isOwner == true {
                        self.ui_mainLabel.text = "Bienvenue cher propriétaire"
                    } else {
                        self.ui_mainLabel.text = "😱"
                    }
                }
                
            })
        }
        print("Coucou")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pasteboard = UIPasteboard.general
        //pasteboard.string = "texte à copier"
        pasteboard.setItems([[kUTTypeUTF8PlainText as String : "texte à copier"]], options: [UIPasteboardOption.expirationDate : Date(timeIntervalSinceNow: 60)])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        return true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}

