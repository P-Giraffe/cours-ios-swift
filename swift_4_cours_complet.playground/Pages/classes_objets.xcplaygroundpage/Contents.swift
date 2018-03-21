//: [< Sommaire](Sommaire)
/*:
 # Classes et Objets
 ---
 ### Maxime Britto - Swift 4
 */
//class Player {
//    private static let DEFAULT_NAME = "John Doe"
//    private static var s_lastId:Int = 0
//    private static func getNextId() -> Int {
//        s_lastId = s_lastId + 1
//        return s_lastId
//    }
//    private var _id:Int
//    private var _name:String
//    private var _score:Int = 0 {
//        willSet(futurScore) {
//            print("Le score va changer depuis \(_score) vers \(futurScore)")
//        }
//
//        didSet(ancienScore) {
//            print("Le score vient de changer pour \(_score) depuis \(ancienScore)")
//            if _score > 10 {
//                _score = ancienScore
//            }
//        }
//    }
//    private var _level:Int = 1
//
//    var name:String {
//        get {
//            return _name
//        }
//        set {
//            if newValue.count > 0 {
//                _name = newValue
//            }
//        }
//    }
//
//    init(startName:String) {
//        _id = Player.getNextId()
//        if startName.count == 0 {
//            _name = Player.DEFAULT_NAME
//        } else {
//            _name = startName
//        }
//    }
//
//    func getScore() -> Int {
//        return _score
//    }
//
//    func getLevel() -> Int {
//        return _level
//    }
//
//    func gameWon() {
//        changeScore(newScore: _score + 5)
//    }
//
//    func gameLost() {
//        changeScore(newScore: _score - 2)
//    }
//
//    func changeScore(newScore:Int) {
//        _score = newScore
//        updateLevel()
//    }
//
//    private func updateLevel() {
//        if _score < 10 {
//            _level = 1
//        } else if _score < 20 {
//            _level = 2
//        } else {
//            _level = 3
//        }
//    }
//}
//
//let player1 = Player(startName: "Sheldon")
//let player2 = Player(startName: "Leonard")
//player1.gameWon()
//player1.gameWon()
//player2.gameWon()
//player1.gameLost()
//player1.changeScore(newScore: 30)
//let player3 = Player(startName: "Penny")
//player3.name = "Super Penny"
//player3.name = ""

//: ### init optionnel (*Failable init*)
class User {
    private let _name:String
    private let _yearOfBirth:Int
    
    init?(name:String, yearOfBirth:Int) {
        guard name.count > 0 && yearOfBirth > 1900 else {
            return nil
        }
        self._name = name
        self._yearOfBirth = yearOfBirth
    }
}

let u1 = User(name: "Bob", yearOfBirth: 2001)
let u2 = User(name: "Joe", yearOfBirth: -1)
let u3 = User(name: "", yearOfBirth: 2000)
//: [Optionnels >](@next)
