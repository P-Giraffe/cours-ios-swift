//: [< Sommaire](Sommaire)
/*:
 # Fil d'exécution
 ---
 ### Maxime Britto - Swift 4
 */

var textVariable = "Coucou"
print(textVariable)
textVariable = textVariable + ", playground"
print(textVariable)

if textVariable.count > 0 {
    print("Ce texte contient au moins une lettre")
}

for letter in textVariable {
    print("Lettre : \(letter)")
}
//: [Fonctions >](@next)
