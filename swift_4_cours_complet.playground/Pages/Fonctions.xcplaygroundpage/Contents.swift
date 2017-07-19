//: [Conditions](@previous)
/*:
 # Fonctions
 ---
 ### Maxime Britto - Swift 4
 */
func calculResultat(nb1:Double, nb2:Double, operateur:String) -> Double {
    let resultat : Double
    if operateur == "+" {
        resultat = nb1 + nb2
    } else if operateur == "-" {
        resultat = nb1 - nb2
    } else if operateur == "*" {
        resultat = nb1 * nb2
    } else if operateur == "/" {
        if (nb2 == 0) {
            print("Oups la division par zero n'existe pas")
        }
        resultat = nb1 / nb2
    } else {
        resultat = 0
    }
    
    return resultat
}
func demarrerCalculatrice() {
    let premierNombre : Double = 2
    let secondNombre : Double = 5
    let operateur : String = "+"
    let resultat = calculResultat(nb1: premierNombre, nb2: secondNombre, operateur: operateur)
    
    print("\(premierNombre) \(operateur) \(secondNombre) = \(resultat)")
}

calculResultat(nb1: 5, nb2: 8, operateur: "+")
demarrerCalculatrice()
demarrerCalculatrice()

