//: [< Sommaire](Sommaire)
/*:
 # Variables
 ---
  ### Maxime Britto - Swift 4
 */

var premierNombre : Int
premierNombre = 8
premierNombre = 9
print(premierNombre)
var secondNombre : Int = 10
print(secondNombre)
var resultat = premierNombre + secondNombre
print(resultat)
/*:
 **`var`** nomVariable : Type = *valeur initiale*
 */
var nombre:Int = 100
nombre = nombre + 1
nombre += 1
//:Le type peut être inféré par le compilateur automatiquement en fonction de la valeur initiale :
var autreNombre = 20
var nombreReel = 20.5


/*:
 ### Constantes
 
 **`let`** nomConstante : Type = *valeur de la constante*
 */

let PI = 3.14
/*:
 ### Conversion de type
 */
var scoreTotal:Int = 10
var scorePartie:Double = 10.9
scoreTotal = Int(scorePartie)
var ageStr:String = "Big Head"
var age:Int? = Int(ageStr)






//: [Tableaux >](@next)
