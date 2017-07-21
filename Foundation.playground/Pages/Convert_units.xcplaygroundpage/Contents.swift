//: [< Sommaire](Sommaire)
/*:
 # Conversion d'unités
 ---
 ### Maxime Britto - Swift 4
 ---
[Documentation officielle Apple](https://developer.apple.com/documentation/foundation/units_and_measurement?language=objc)
  */
import Foundation

let speedKmH = 100.0
let speedMeterS = UnitSpeed.kilometersPerHour.converter.baseUnitValue(fromValue: speedKmH)
let speedMilesH = UnitSpeed.milesPerHour.converter.value(fromBaseUnitValue: speedMeterS)





