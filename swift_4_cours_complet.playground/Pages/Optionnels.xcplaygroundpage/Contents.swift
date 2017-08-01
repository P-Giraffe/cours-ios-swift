//: [< Sommaire](Sommaire)
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

//: ### Optionnels : valeurs par défaut

let noteStr = "d15"
let noteOpt:Double? = Double(noteStr)
print("Note obtenue : ")
if let note = noteOpt {
    print(note)
} else {
    print(0.0)
}
print(noteOpt ?? 0.0)
let noteFinale = noteOpt ?? 0.0








