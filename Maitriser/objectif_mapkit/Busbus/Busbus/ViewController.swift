//
//  ViewController.swift
//  Busbus
//
//  Created by Maxime Britto on 14/03/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import UIKit
import MapKit
import GEOSwift

class ViewController: UIViewController {
    @IBOutlet weak var ui_map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ui_map.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.4012, longitude: 3.6767), span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25)), animated: false)
        
        downloadPointsOfInterest()
    }

    func downloadPointsOfInterest() {
        if let url = URL(string:"http://opendata.agglopole.fr/webservice/carto/17"),
            let features = try! Features.fromGeoJSON(url) {
            for feature in features {
                print(feature.properties?["nom"])
            }
        }
    }
}

