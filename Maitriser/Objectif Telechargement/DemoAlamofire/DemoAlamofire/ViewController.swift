//
//  ViewController.swift
//  DemoAlamofire
//
//  Created by Maxime Britto on 10/11/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet weak var ui_sourceTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("https://www.apple.com").responseString { (response) in
            if let htmlBody = response.result.value {
                self.ui_sourceTextView.text = htmlBody
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

