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
        let tagger = NSLinguisticTagger(tagSchemes: [.lexicalClass, .lemma], options: 0)
        tagger.string = title
        let range = NSRange(location: 0, length: title.count)
        
        tagger.enumerateTags(in: range, scheme: .lexicalClass, options: [.omitPunctuation, .omitWhitespace]) { (tagOpt, tokenRange, _, _) in
            if let tag:NSLinguisticTag = tagOpt,
                tag == .verb {
                if let lemmaTag = tagger.tag(at: tokenRange.location, scheme: .lemma, tokenRange: nil, sentenceRange: nil) {
                    category = lemmaTag.rawValue
                } else {
                    let verb = (title as NSString).substring(with: tokenRange)
                    category = verb
                }
            }
        }
    }
    
}
