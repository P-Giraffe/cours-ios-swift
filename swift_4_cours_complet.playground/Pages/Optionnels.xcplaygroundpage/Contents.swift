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

//: ### Optionnels : Chaînage

let j1:Joueur = Joueur(avecPseudo:"Mario")
let j2 = Joueur(avecPseudo:"Luigi")
let j3 = Joueur(avecPseudo: "Yoshi")

j1.coequipier = j2
j2.coequipier = j1

if let pseudoCoequipierMario:String = j1.coequipier?.pseudo {
    print(pseudoCoequipierMario)
}

if let pseudoCoeqYoshi = j3.coequipier?.pseudo {
    print(pseudoCoeqYoshi)
} else {
    print("Yoshi joue en solo")
}

