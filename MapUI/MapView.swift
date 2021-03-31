//
//  MapView.swift
//  MapUI
//
//  Created by Jorge Giannotta on 31/03/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        map.mapType = .satelliteFlyover
        return map
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}


final class Coordinator: NSObject, MKMapViewDelegate {
    
    var control : MapView
    
    init(_ control: MapView) {
        self.control = control
    }
}
