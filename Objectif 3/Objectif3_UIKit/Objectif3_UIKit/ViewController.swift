//
//  ViewController.swift
//  Objectif3_UIKit
//
//  Created by Maxime Britto on 28/07/2017.
//  Copyright © 2017 Purple Giraffe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var ui_tableView: UITableView!
    var _70sShowList:[String] = []
    var _friendsList:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ui_tableView.dataSource = self
        _70sShowList.append("Donna")
        _70sShowList.append("Eric")
        _70sShowList.append("Kelso")
        _70sShowList.append("Jackie")
        _70sShowList.append("Fez")
        _70sShowList.append("Hide")
        _70sShowList.append("Bob")
        _70sShowList.append("Midge")
        
        _friendsList.append("Monica")
        _friendsList.append("Rachel")
        _friendsList.append("Phoebe")
        _friendsList.append("Chandler")
        _friendsList.append("Joey")
        _friendsList.append("Ross")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title:String
        if section == 0 {
            title = "That 70's Show"
        } else {
            title = "Friends"
        }
        return title
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rowCount:Int
        if section == 0 {
            rowCount = _70sShowList.count
        } else {
            rowCount = _friendsList.count
        }
        return rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "number-cell", for: indexPath)
        
        if let titleLabel = cell.textLabel {
            if indexPath.section == 0 {
                titleLabel.text = _70sShowList[indexPath.row]
            } else {
                titleLabel.text = _friendsList[indexPath.row]
            }
            
        }
        
        return cell
    }
}

