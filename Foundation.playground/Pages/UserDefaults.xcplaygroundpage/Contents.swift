//: [< Sommaire](Sommaire)
/*:
 # Préférences utilisateur avec UserDefaults
 ---
 ### Maxime Britto - Swift 4
 ---
 [Documentation officielle Apple](https://developer.apple.com/documentation/foundation/nsuserdefaults)
 */
import Foundation

let username = "mbritto"
let userPreferences = UserDefaults.standard
userPreferences.set(username, forKey: "nickname")
userPreferences.set(120, forKey: "score")
userPreferences.set(["Riri", "Fifi", "Loulou"], forKey:"castors_juniors")

//quitter app
//relance app

let loadedName = UserDefaults.standard.string(forKey: "nickname")
let score = UserDefaults.standard.integer(forKey: "score")
let cousins = UserDefaults.standard.array(forKey: "castors_juniors")









