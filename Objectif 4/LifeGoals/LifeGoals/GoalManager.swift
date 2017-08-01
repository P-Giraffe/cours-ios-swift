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
    private var _rawGoalList:[String]
    private var _goalList:[Goal] = []
    
    init() {
        if let loadedGoalList = UserDefaults.standard.array(forKey: GOAL_LIST_KEY) as? [String] {
            _rawGoalList = loadedGoalList
            buildGoalList()
        } else {
            _rawGoalList = []
        }
    }
    
    private func buildGoalList() {
        _goalList.removeAll()
        for goalText in _rawGoalList {
            let goal = Goal(newTitle: goalText)
            _goalList.append(goal)
        }
    }
    
    func getGoalCount() -> Int {
        return _goalList.count
    }
    
    func getGoal(atIndex index:Int) -> Goal {
        return _goalList[index]
    }
    
    func addGoal(withText text:String) -> Int? {
        let newIndex:Int?
        if text.count > 0 {
            _rawGoalList.append(text)
            newIndex = _rawGoalList.count - 1
            UserDefaults.standard.set(_rawGoalList, forKey: GOAL_LIST_KEY)
            _goalList.append(Goal(newTitle: text))
        } else {
            newIndex = nil
        }
        return newIndex
    }
    
    func removeGoal(atIndex index:Int) {
        _rawGoalList.remove(at: index)
        UserDefaults.standard.set(_rawGoalList, forKey: GOAL_LIST_KEY)
        _goalList.remove(at: index)
    }
}
