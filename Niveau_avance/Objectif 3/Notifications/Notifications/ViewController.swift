//
//  ViewController.swift
//  Notifications
//
//  Created by Maxime Britto on 15/01/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    @IBAction func requestAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (granted, error) in
            print("Response : \(granted)")
        }
    }
    
    @IBAction func scheduleNotification() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

