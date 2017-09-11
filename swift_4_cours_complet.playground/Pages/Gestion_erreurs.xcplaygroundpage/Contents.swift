//: [< Sommaire](Sommaire)
/*:
 # Gestion des erreurs
 ---
 ### Maxime Britto - Swift 4
 */
import Foundation

let url = URL(string: "http://www.addpple.fr")!

if let contenuHTML = try? String(contentsOf: url) {
    print(contenuHTML)
}

do {
    let contenuHTML = try String(contentsOf:url)
    print(contenuHTML)
} catch let error as NSError {
    print(error)
}





/*:
 [< Sommaire](Sommaire)
 */

