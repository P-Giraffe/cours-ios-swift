//
//  Goal.swift
//  LifeGoals
//
//  Created by Maxime Britto on 01/08/2017.
//  Copyright © 2017 Purple Giraffe. All rights reserved.
//

import Foundation

class Goal {
    let title:String
    var category:String? = nil
    
    init(newTitle:String) {
        title = newTitle
        processGoal()
    }
    
    private func processGoal() {
        let tagger = NSLinguisticTagger(tagSchemes: [.lexicalClass], options: 0)
        tagger.string = title
        let range = NSRange(location: 0, length: title.count)
        
        tagger.enumerateTags(in: range, scheme: .lexicalClass, options: [.omitPunctuation, .omitWhitespace]) { (tagOpt, tokenRange, _, _) in
            if let tag:NSLinguisticTag = tagOpt,
                tag == .verb {
                let verb = (title as NSString).substring(with: tokenRange)
                category = verb
            }
        }
    }
    
}
