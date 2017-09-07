//: [< Sommaire](Sommaire)
/*:
 # Conditions
 ---
 ### Maxime Britto - Swift 4
 */

//: ## if ... else
//: *Exécute du code à certaines conditions*
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

//: ## switch ... case
//: *Choisit quel code exécuter en fonction de la valeur d'une variable*

switch operateur {
case "+":
    resultat = premierNombre + secondNombre
    fallthrough
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

//: ## guard ... else
//: *Vérifie que toutes les conditions sont réunies en début de fonction*
func division(numerateur:Double, denominateur:Double) -> Double? {
    guard denominateur != 0 else {
        return nil
    }
    
    return numerateur / denominateur
}

division(numerateur: 0, denominateur: 0)


//: [Fil d'exécution >](@next)
