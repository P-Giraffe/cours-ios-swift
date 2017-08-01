//: [< Sommaire](Sommaire)
/*:
 # Analyse du langage naturel avec NSLinguisticTagger
 ---
 ### Maxime Britto - Swift 4
 ---
 [Documentation officielle Apple](https://developer.apple.com/documentation/foundation/nslinguistictagger)
 */
import Foundation

var text = "Je marchais dans les rues de Paris, quand j'ai rencontré Elon Musk."

let tagger = NSLinguisticTagger(tagSchemes: [.lexicalClass, .lemma], options: 0)
tagger.string = text

let range = NSRange(location: 0, length: text.count)
let options: NSLinguisticTagger.Options = [.omitWhitespace, .omitPunctuation, .joinNames]

tagger.enumerateTags(in: range, scheme: .lexicalClass, options: options, using:{
    tagOpt, tokenRange, _, _ in
    if let tag:NSLinguisticTag = tagOpt, tag == .verb {
        let token = (text as NSString).substring(with: tokenRange)
        print("{token: \(token), tag: \(tag.rawValue), range: \(tokenRange)}")
        if let lemmaTag = tagger.tag(at: tokenRange.location, scheme: .lemma, tokenRange: nil, sentenceRange: nil) {
            print("Racine : \(lemmaTag.rawValue)")
        }
    }
})


