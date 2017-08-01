//: [< Sommaire](Sommaire)
/*:
 # Closures
 ---
 ### Maxime Britto - Swift 4
 */

import Foundation
import PlaygroundSupport

print("Avant le timer")
Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false, block: { (timer:Timer) in
    print("Aimez-vous cette app ?")
})
print("Après le timer")

PlaygroundPage.current.needsIndefiniteExecution = true






