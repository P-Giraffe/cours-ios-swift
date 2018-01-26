//: [< Sommaire](Sommaire)
/*:
 # Intervalles (Range)
 ---
 ### Maxime Britto - Swift 4
 */
for i in 0...10 {
    print(i)
}

//: ## Intervalles et tableaux
let names = [ "Kelso", "Hyde", "Eric", "Fez"]
//: Les index du tableau **names** vont de 0 à 3
for name in names[1...] {
    print(name)
}

//: ## Intervalles et chaînes de caractères
let redQuote = "You're a dumbass! - Red Forman"
let stopIndex:String.Index = redQuote.index(of: "-") ?? redQuote.endIndex
let shortQuote = redQuote[..<stopIndex]
/*:
 [< Sommaire](Sommaire)
 */


