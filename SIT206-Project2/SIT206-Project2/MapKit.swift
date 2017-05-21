//
//  MapKit.swift
//  project 2
//
//  Created by NHAN QUANG LU on 18/05/2017.
//  Copyright © 2017 NHAN QUANG LU. All rights reserved.
//

import MapKit
class Mapkit: NSObject, MKAnnotation {
    var name : String
    var rating : Int
    var coordinate: CLLocationCoordinate2D
    
    init ( name:String, rating: Int, coordinate: CLLocationCoordinate2D)
    {
        self.name = name
        self.rating = rating
        self.coordinate=coordinate
    }
}
