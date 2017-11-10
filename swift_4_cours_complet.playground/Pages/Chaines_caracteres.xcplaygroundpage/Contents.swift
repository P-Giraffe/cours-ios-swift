//: [< Sommaire](Sommaire)
/*:
 # Chaînes de caractères
 ---
 ### Maxime Britto - Swift 4
 */
import Foundation
var firstname:String = "Jared"
firstname = "Richard"
var lastname = "Hendricks"
var fullname = firstname + lastname
fullname = firstname + " " + lastname
fullname = "\(firstname) \(lastname)"

let hello = "Bonjour à tous!"
let helloArray:[String] = hello.split(separator: " ").map { (value) -> String in
    return String(value)
}

let helloArrayObjc:[String] = hello.components(separatedBy: " ")

//: [Conditions >](@next)
