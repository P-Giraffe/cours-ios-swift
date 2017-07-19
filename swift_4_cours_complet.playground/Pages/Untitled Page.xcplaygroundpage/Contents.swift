//: [< Classes et objets](@previous)
/*:
 # Optionnels
 ---
 ### Maxime Britto - Swift 4
 */

var ageOpt:Int? = nil
if ageOpt != nil {
    let age:Int = ageOpt!
    print("Vous avez \(age) an(s)")
    if age < 18 {
        print("Il vous reste \(18-age) ans avant la majorité")
    }
} else {
    print("Aucun âge fourni")
}

if let age = ageOpt {
    print("Vous avez \(age) an(s)")
    if age < 18 {
        print("Il vous reste \(18-age) ans avant la majorité")
    }
} else {
    print("Aucun âge fourni")
}

