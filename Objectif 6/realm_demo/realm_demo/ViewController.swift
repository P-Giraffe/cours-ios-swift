//
//  ViewController.swift
//  realm_demo
//
//  Created by Maxime Britto on 12/09/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        listObjects()
    }
    
    func listObjects() {
        var conf = Realm.Configuration( encryptionKey: nil, readOnly: true)
        Realm.Configuration.defaultConfiguration = conf
        let realm = try! Realm()
        let playerList = realm.objects(Player.self)
        for player in playerList {
            print(player.name)
        }
    }
    
    func addObject() {
        let p1 = Player()
        p1.name = "Sheldon"
        p1.score = -1
        
        print("Score p1 : \(p1.score)")
        
        let realm = try! Realm()
        realm.beginWrite()
        realm.add(p1)
        p1.name = "Toto"
        try? realm.commitWrite()
        
        realm.beginWrite()
        p1.name = "Tata"
        try! realm.commitWrite()
        /*
        try? realm.write {
            realm.delete(p1)
        }
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

