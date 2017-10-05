//
//  ViewController.swift
//  Objectif6_UIKit
//
//  Created by Maxime Britto on 05/10/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController {

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


}

