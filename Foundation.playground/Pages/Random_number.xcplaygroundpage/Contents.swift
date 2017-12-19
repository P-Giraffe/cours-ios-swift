//: [< Sommaire](Sommaire)
/*:
 # Génération de nombres aléatoires
 ---
 ### Maxime Britto - Swift 4
 ---
 [-> Documentation officielle Apple](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man3/arc4random_uniform.3.html)
 ---
 Générer un nombre aléatoire compris entre 1 et 100 inclus
 */
import Foundation

let valeurMinimale = 50
let valeurMaximale = 100

let random = valeurMinimale + Int(arc4random_uniform(UInt32(valeurMaximale - valeurMinimale)))









