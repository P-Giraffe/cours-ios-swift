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

let tagger = NSLinguisticTagger(tagSchemes: [.nameTypeOrLexicalClass], options: 0)
tagger.string = text

let range = NSRange(location: 0, length: text.count)
let options: NSLinguisticTagger.Options = [.omitWhitespace, .omitPunctuation, .joinNames]

tagger.enumerateTags(in: range, scheme: .nameTypeOrLexicalClass, options: options, using:{
    tagOpt, tokenRange, _, _ in
    if let tag:NSLinguisticTag = tagOpt {
        let token = (text as NSString).substring(with: tokenRange)
        print("{token: \(token), tag: \(tag.rawValue), range: \(tokenRange)}")
    }
})


