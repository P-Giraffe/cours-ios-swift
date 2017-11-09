//: [< Sommaire](Sommaire)
/*:
 # Structures
 ---
 ### Maxime Britto - Swift 4
 */
class PlayerC {
    
    let name:String
    var score:Int
    
    
    init(name:String, score:Int) {
        self.name = name
        self.score = score
    }
}

struct PlayerS {
    struct Gear {
        let weapon:String
        let tool:String
    }
    let name:String
    var score:Int
    var gear:Gear
}

let p1 = PlayerC(name: "Sheldon", score: 0)
var p2 = PlayerS(name: "Leonard", score: 0, gear:PlayerS.Gear(weapon: "knife", tool: "wrench"))

let p1bis = p1
var p2bis = p2

p1bis.score = 1
p2bis.score = 1

p1.score
p2.score




/*:
 [< Sommaire](Sommaire)
 */
