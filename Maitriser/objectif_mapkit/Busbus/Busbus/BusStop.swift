//
//  BusStop.swift
//  Busbus
//
//  Created by Maxime Britto on 21/03/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import MapKit

class BusStop: MKPointAnnotation {
    enum StopType : String {
        case shelter = "ABRI"
        case post = "POTEAU"
    }
    
    let stopType:StopType
}
