//
//  MapFlag.swift
//  chammApp
//
//  Created by Jennifer Lin on 2019/6/27.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import Foundation
import MapKit

class MapFlag: NSObject, MKAnnotation {
    
    let title: String?
    let locationName: String
    let desc: String
    let coordinate: CLLocationCoordinate2D
    let urlString:String
    
    init(title: String, locationName: String, description: String, coordinate: CLLocationCoordinate2D, url : String) {
        self.title = title
        self.locationName = locationName
        self.desc = description
        self.coordinate = coordinate
        self.urlString = url
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}

