//
//  MapContainerView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 13/11/2020.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    
    var body: some View {
        
        //Binding data wit $
        MapView(countryData: $covidFetch.allCountries)
        
        
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
