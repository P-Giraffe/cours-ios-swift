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
        ui_map.register(BusStopAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        ui_map.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.4012, longitude: 3.6767), span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25)), animated: false)
        
        downloadPointsOfInterest()
        
//        let poi = MKPointAnnotation()
//        poi.coordinate = CLLocationCoordinate2D(latitude: 43.4012, longitude: 3.6767)
//        poi.title = "Sète"
//        poi.subtitle = "La plus belle ville"
//        ui_map.addAnnotation(poi)
    }

    func downloadPointsOfInterest() {
        if let url = URL(string:"http://opendata.agglopole.fr/webservice/carto/17"),
            let features = try! Features.fromGeoJSON(url) {
            for feature in features {
                if let busStop = BusStop(feature: feature) {
                    ui_map.addAnnotation(busStop)
                }
            }
        }
    }
}

