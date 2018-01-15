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

/*:
 ### Escaping closures
 */
func accueillirEtConfirmer(messageAccueil:String, confirmer:@escaping (String)->Void) {
    print(messageAccueil)
    Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (_) in
        confirmer("accueil effectué")
    }
    
}

accueillirEtConfirmer(messageAccueil: "Bienvenue") { (messageConfirmation) in
    print("Confirmation de message recu : " + messageConfirmation)
}


PlaygroundPage.current.needsIndefiniteExecution = true






