//: [< Sommaire](Sommaire)
/*:
 # Enumérations
 ---
 ### Maxime Britto - Swift 4
 */
import UIKit

enum PointCardinal {
    case nord
    case sud
    case est
    case ouest
}

var direction:PointCardinal
direction = PointCardinal.nord
direction = .sud
if direction == .est {
    print("Vous allez vers l'EST")
}


/*:
 [< Sommaire](Sommaire)
 */

