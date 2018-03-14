//
//  ViewController.swift
//  Busbus
//
//  Created by Maxime Britto on 14/03/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var ui_map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ui_map.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.4012, longitude: 3.6767), span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25)), animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

