//: [< Sommaire](Sommaire)
/*:
 # Classes et Objets
 ---
 ### Maxime Britto - Swift 4
 */
class Player {
    private var _name:String
    private var _score:Int = 0
    private var _level:Int = 1
    
    var name:String {
        get {
            return _name
        }
        set {
            if newValue.count > 0 {
                _name = newValue
            }
        }
    }
    
    init(startName:String) {
        _name = startName
    }
    
    func getScore() -> Int {
        return _score
    }
    
    func getLevel() -> Int {
        return _level
    }
    
    func gameWon() {
        changeScore(newScore: _score + 5)
    }
    
    func gameLost() {
        changeScore(newScore: _score - 2)
    }
    
    func changeScore(newScore:Int) {
        _score = newScore
        updateLevel()
    }
    
    private func updateLevel() {
        if _score < 10 {
            _level = 1
        } else if _score < 20 {
            _level = 2
        } else {
            _level = 3
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
print("Player : \(player3.name)")
player3.name = "Super Penny"
player3.name = ""

//: [Optionnels >](@next)
