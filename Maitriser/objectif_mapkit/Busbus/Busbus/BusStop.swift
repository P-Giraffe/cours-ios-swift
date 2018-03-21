//
//  BusStop.swift
//  Busbus
//
//  Created by Maxime Britto on 21/03/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import MapKit
import GEOSwift

class BusStop: MKPointAnnotation {
    enum StopType : String {
        case shelter = "ABRI"
        case post = "POTEAU"
    }
    
    let stopType:StopType
    
    init?(feature:Feature) {
        guard let point = feature.geometries?.first as? Waypoint,
            let properties = feature.properties,
            let name = properties["nom"] as? String,
            let lines = properties["lignes"] as? String,
            let typeStr = properties["mobilier"] as? String,
            let type = StopType(rawValue: typeStr)
            else { return nil }
        stopType = type
        super.init()
        self.title = name
        self.subtitle = lines
        self.coordinate = CLLocationCoordinate2DFromCoordinate(point.coordinate)
    }
}
