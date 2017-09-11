public class Joueur {
    public var pseudo:String = ""
    public var score:Int = 0
    public var coequipier:Joueur?
    
    public init(avecPseudo p:String) {
        pseudo = p
    }
}

