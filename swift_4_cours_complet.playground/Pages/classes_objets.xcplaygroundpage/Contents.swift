//: [< Tableaux](@previous)
/*:
 # Classes et Objets
 ---
 ### Maxime Britto - Swift 4
 */
class Player {
    var name:String
    private var score:Int = 0
    private var level:Int = 1
    
    init(startName:String) {
        name = startName
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getLevel() -> Int {
        return level
    }
    
    func gameWon() {
        changeScore(newScore: score + 5)
    }
    
    func gameLost() {
        changeScore(newScore: score - 2)
    }
    
    func changeScore(newScore:Int) {
        score = newScore
        updateLevel()
    }
    
    private func updateLevel() {
        if score < 10 {
            level = 1
        } else if score < 20 {
            level = 2
        } else {
            level = 3
        }
    }
}

let player1 = Player(startName: "Sheldon")
let player2 = Player(startName: "Leonard")
player1.gameWon()
player1.gameWon()
player2.gameWon()
player1.gameLost()
player1.changeScore(newScore: 30)
let player3 = Player(startName: "Penny")

//: [Optionnels >](@next)
