public class Animal {
    public var nom:String = ""
    public var age:Int = 0
    
    public init() {
        
    }

    public func direBonjour() {
        print("Je suis \(nom) et j'ai \(age) ans")
    }
    
    public func feterAnniversaire() {
        age += 1
    }
}
