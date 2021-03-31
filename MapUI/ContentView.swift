//
//  ContentView.swift
//  MapUI
//
//  Created by Jorge Giannotta on 31/03/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
//    @State private var region : MKCoordinateRegion = {
//        var mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
//
//        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
//
//        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
//
//        return mapRegion
//    }()
    
    private var locationManager = LocationManager()
    
    init() {
            MKMapView.appearance().mapType = .satellite
        }
    
    var body: some View {
//        Map(coordinateRegion: $region,interactionModes: MapInteractionModes.all, showsUserLocation: true, userTrackingMode: .none)
//            .edgesIgnoringSafeArea(.all)
        MapView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
