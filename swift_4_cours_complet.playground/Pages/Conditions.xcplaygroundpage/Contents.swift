//: [< Chaînes de caractères](@previous)
/*:
 # Conditions
 ---
 ### Maxime Britto - Swift 4
 */

//: ## if ... else
let premierNombre : Double = 5
let secondNombre : Double = 0
let operateur : String = "+"
var resultat : Double
if operateur == "+" {
    resultat = premierNombre + secondNombre
} else if operateur == "-" {
    resultat = premierNombre - secondNombre
} else if operateur == "*" {
    resultat = premierNombre * secondNombre
} else if operateur == "/" {
    if (secondNombre == 0) {
        print("Oups la division par zero n'existe pas")
    }
    resultat = premierNombre / secondNombre
} else {
    resultat = 0
}
print("\(premierNombre) \(operateur) \(secondNombre) = \(resultat)")

//: # switch ... case

switch operateur {
case "+":
    resultat = premierNombre + secondNombre
case "-":
    resultat = premierNombre - secondNombre
case "/":
    if secondNombre != 0 {
        resultat = premierNombre / secondNombre
    }
case "*":
    resultat = premierNombre * secondNombre
default:
    resultat = 0
}








//: [Fil d'exécution >](@next)
