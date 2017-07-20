//: [< Tableaux](@previous)
/*:
 # Classes et Objets
 ---
 ### Maxime Britto - Swift 4
 */
class Player {
    var name:String = ""
    var score:Int = 0
    var level:Int = 1
    
    func gameWon() {
        score = score + 5
        updateLevel()
    }
    
    func gameLost() {
        score = score - 2
        updateLevel()
    }
    
    func updateLevel() {
        if score < 10 {
            level = 1
        } else {
            level = 2
        }
    }
}

let player1 = Player()
player1.name = "Sheldon"
let player2 = Player()
player2.name = "Leonard"
player1.gameWon()
player1.gameWon()
player2.gameWon()
player1.gameLost()


//: [Optionnels >](@next)
