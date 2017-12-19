//: [< Sommaire](Sommaire)
/*:
 # Fonctions
 ---
 ### Maxime Britto - Swift 4
 */
func calculResultat(duNombre nb1:Double,avecLeNombre nb2:Double,_ operateur:String = "+") -> Double {
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
calculResultat(duNombre: 5, avecLeNombre: 3, "+")
calculResultat(duNombre: 1, avecLeNombre: 3)

func demarrerCalculatrice() {
    let premierNombre : Double = 2
    let secondNombre : Double = 5
    let operateur : String = "+"
    let resultat = calculResultat(duNombre: premierNombre, avecLeNombre: secondNombre, operateur)
    
    print("\(premierNombre) \(operateur) \(secondNombre) = \(resultat)")
}

calculResultat(duNombre: 5, avecLeNombre: 8, "+")
demarrerCalculatrice()
demarrerCalculatrice()

//: [Variables >](@next)
