//
//  BusStopAnnotationView.swift
//  Busbus
//
//  Created by Maxime Britto on 21/03/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import MapKit

class BusStopAnnotationView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            markerTintColor = UIColor.green
        }
    }


}
