//
//  ViewController.swift
//  ComposantsUIKit
//
//  Created by Maxime Britto on 13/07/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func displayActivityViewController(_ sender: Any) {
        let shareViewController = UIActivityViewController(activityItems: ["Coucou"], applicationActivities: nil)
        shareViewController.excludedActivityTypes = [UIActivityType.airDrop, UIActivityType.postToFacebook]
        present(shareViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

