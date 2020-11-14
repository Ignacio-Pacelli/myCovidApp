//
//  MapView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 13/11/2020.
//

import SwiftUI
import UIKit
import MapKit

struct MapView: UIViewRepresentable {
    
    @Binding var countryData: [CountryData]
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        
        //Initialize to [] beacuse at the beginning we don't have any pin
        var allAnnotations: [CoronaCaseAnnotation] = []
        //For every country we create a pin with coordinates
        
        for data in countryData{
            
            let title = data.country + "\n Confirmed " + data.confirmed.formatNumber() + "\n Deaths " + data.deaths.formatNumber()
            
            let coordinate = CLLocationCoordinate2D(latitude: data.latitude, longitude: data.longitude)
            
            //We create a coronaCaseAnnotation to have an array
            allAnnotations.append(CoronaCaseAnnotation(title: title, coordinate: coordinate))
        }
        
        //For each annotations we want to remove them in case our user re-open the map
        uiView.annotations.forEach {uiView.removeAnnotation($0)}
        uiView.addAnnotations(allAnnotations)
        
        
    }
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView()
    }
    
    
}


class CoronaCaseAnnotation: NSObject, MKAnnotation {
    
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String?, coordinate: CLLocationCoordinate2D) {
        
        self.title = title
        self.coordinate = coordinate
        
    }
    
    
}
