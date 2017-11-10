//: [< Sommaire](Sommaire)
/*:
 # Singleton
 ---
 ### Maxime Britto - Swift 4
 */
struct Player {
    var name:String
}

class PlayerManager {
    private static var s_instance:PlayerManager? = nil
    public static var shared:PlayerManager {
        if s_instance == nil {
            s_instance = PlayerManager()
        }
        
        return s_instance!
    }
    var playerList:[Player] = []
    
    private init() {
        
    }
}

//ViewController1
let playerManager1 = PlayerManager.shared
playerManager1.playerList.append(Player(name: "Sheldon"))

//ViewController2
let playerManager2 = PlayerManager.shared
playerManager2.playerList.append(Player(name: "Leonard"))
playerManager2.playerList.count

//ViewController3
let playerManager3 = PlayerManager.shared
playerManager3.playerList.append(Player(name: "Penny"))
playerManager3.playerList.count





/*:
 [< Sommaire](Sommaire)
 */

