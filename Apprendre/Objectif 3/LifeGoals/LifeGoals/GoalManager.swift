//
//  GoalManager.swift
//  LifeGoals
//
//  Created by Maxime Britto on 31/07/2017.
//  Copyright © 2017 Purple Giraffe. All rights reserved.
//

import Foundation
class GoalManager {
    private let GOAL_LIST_KEY = "GoalList"
    private var _goalList:[String]
    
    init() {
        if let loadedGoalList = UserDefaults.standard.array(forKey: GOAL_LIST_KEY) as? [String] {
            _goalList = loadedGoalList
        } else {
            _goalList = []
        }
    }
    
    func getGoalCount() -> Int {
        return _goalList.count
    }
    
    func getGoal(atIndex index:Int) -> String {
        return _goalList[index]
    }
    
    func addGoal(withText text:String) -> Int? {
        let newIndex:Int?
        if text.count > 0 {
            _goalList.append(text)
            newIndex = _goalList.count - 1
            UserDefaults.standard.set(_goalList, forKey: GOAL_LIST_KEY)
        } else {
            newIndex = nil
        }
        return newIndex
    }
    
    func removeGoal(atIndex index:Int) {
        _goalList.remove(at: index)
        UserDefaults.standard.set(_goalList, forKey: GOAL_LIST_KEY)
    }
}
