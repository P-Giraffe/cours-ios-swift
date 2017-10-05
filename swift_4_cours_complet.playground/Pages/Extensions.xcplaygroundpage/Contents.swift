//: [< Sommaire](Sommaire)
/*:
 # Extensions
 ---
 ### Maxime Britto - Swift 4
 */

extension Int {
    func getDigitsCount() -> Int {
        var valueCopy = self
        var digitsCount = 1
        while valueCopy >= 10 {
            valueCopy = valueCopy / 10
            digitsCount = digitsCount + 1
        }
        return digitsCount
    }
}

let score = 0
score.getDigitsCount()





/*:
 [< Sommaire](Sommaire)
 */

