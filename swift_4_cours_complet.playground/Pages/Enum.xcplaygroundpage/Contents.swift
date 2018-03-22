//: [< Sommaire](Sommaire)
/*:
 # Enumérations
 ---
 ### Maxime Britto - Swift 4
 */
enum PointCardinal : String {
    case nord = "Nord"
    case sud = "Sud"
    case est = "Est"
    case ouest = "Ouest"
}

var direction:PointCardinal
direction = PointCardinal.nord
direction = .sud
if direction == .est {
    print("Vous allez vers l'EST")
}

var directionUtilisateur = PointCardinal(rawValue: "Nord")
print(directionUtilisateur)

enum JourSemaine : Int {
    case lundi = 1
    case mardi = 2
    case mercredi = 3
    case jeudi = 4
    case vendredi = 5
    case samedi = 6
    case dimanche = 7
}

let jour = JourSemaine(rawValue: 60)
/*:
 [< Sommaire](Sommaire)
 */

