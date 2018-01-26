//: [< Sommaire](Sommaire)
/*:
 # Propriétés Lazy
 ---
 ### Maxime Britto - Swift 4
 */

struct Player {
    var firstname:String
    var lastname:String
    var score = 0
    lazy var fullname = firstname + " " + lastname
    var fullname_computed: String {
        return firstname + " " + lastname
    }
    lazy var fullname_computed_lazy: String = {
        return firstname + " " + lastname
    }()
    
    init(firstname:String, lastname:String) {
        self.firstname = firstname
        self.lastname = lastname
    }
}

var p1 = Player(firstname: "Arya", lastname: "Stark")
print(p1.fullname)
print(p1.fullname_computed)
print("fullname_computed_lazy : " + p1.fullname_computed_lazy)
p1.firstname = "Eddard"
print(p1.fullname_computed)
print("fullname_computed_lazy : " + p1.fullname_computed_lazy)
/*:
 [< Sommaire](Sommaire)
 */

