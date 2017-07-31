//
//  ViewController.swift
//  LifeGoals
//
//  Created by Maxime Britto on 31/07/2017.
//  Copyright © 2017 Purple Giraffe. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource {
  
    let _goalManager = GoalManager()
    
    @IBOutlet weak var ui_goalsTableView: UITableView!
    @IBOutlet weak var ui_newGoalTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ui_newGoalTextField.delegate = self
        ui_goalsTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let goalText = ui_newGoalTextField.text,
           let goalIndex = _goalManager.addGoal(withText: goalText) {
            ui_goalsTableView.insertRows(at: [IndexPath(row: goalIndex, section: 0)], with: .automatic)
            ui_newGoalTextField.text = nil
        }
        textField.resignFirstResponder()
        return false
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        textField.text = nil
        textField.resignFirstResponder()
        return false
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _goalManager.getGoalCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "goal-cell", for: indexPath)
        
        cell.textLabel?.text = _goalManager.getGoal(atIndex: indexPath.row)
        
        return cell
    }
}

