//
//  LocationManager.swift
//  MapUI
//
//  Created by Jorge Giannotta on 31/03/21.
//

import Foundation
import MapKit

class LocationManager: NSObject {
    
    private let locationManager = CLLocationManager()
    //var location = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0))
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
}
