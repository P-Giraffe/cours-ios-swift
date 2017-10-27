//
//  SecondViewController.swift
//  Objectif5_UIKit
//
//  Created by Maxime Britto on 08/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var ui_titleLabel: UILabel!
    var textToDisplay:String?
    
    override func viewWillAppear(_ animated: Bool) {
        if let text = textToDisplay {
            ui_titleLabel.text = "Ecran 2 : \(text)"
        }
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
