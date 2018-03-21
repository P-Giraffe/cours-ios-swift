//
//  BusStopClusterAnnotationView.swift
//  Busbus
//
//  Created by Maxime Britto on 21/03/2018.
//  Copyright © 2018 Maxime Britto. All rights reserved.
//

import MapKit

class BusStopClusterAnnotationView: MKAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            if let cluster = newValue as? MKClusterAnnotation {
                //markerTintColor = UIColor.clear
                let renderer = UIGraphicsImageRenderer(size: CGSize(width: 40, height: 40))
                let count = cluster.memberAnnotations.count
                let shelterCount = cluster.memberAnnotations.filter { member -> Bool in
                    return (member as! BusStop).stopType == .shelter
                    }.count
                image = renderer.image { _ in
                    // Fill full circle with tricycle color
                    UIColor.purple.setFill()
                    UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 40, height: 40)).fill()
                    
                    // Fill pie with unicycle color
                    UIColor.orange.setFill()
                    let piePath = UIBezierPath()
                    piePath.addArc(withCenter: CGPoint(x: 20, y: 20), radius: 20,
                                   startAngle: 0, endAngle: (CGFloat.pi * 2.0 * CGFloat(shelterCount)) / CGFloat(count),
                                   clockwise: true)
                    piePath.addLine(to: CGPoint(x: 20, y: 20))
                    piePath.close()
                    piePath.fill()
                    
                    // Fill inner circle with white color
                    UIColor.white.setFill()
                    UIBezierPath(ovalIn: CGRect(x: 8, y: 8, width: 24, height: 24)).fill()
                    
                    // Finally draw count text vertically and horizontally centered
                    let attributes = [ NSAttributedStringKey.foregroundColor: UIColor.black,
                                       NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20)]
                    let text = "\(count)"
                    let size = text.size(withAttributes: attributes)
                    let rect = CGRect(x: 20 - size.width / 2, y: 20 - size.height / 2, width: size.width, height: size.height)
                    text.draw(in: rect, withAttributes: attributes)
                }
            }
        }
    }

}
