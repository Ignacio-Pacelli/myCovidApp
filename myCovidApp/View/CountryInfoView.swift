//
//  CountryInfoView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 13/11/2020.
//

import SwiftUI

struct CountryInfoView: View {

    var countryData: CountryData
    

    
    var body: some View {
        
        NavigationView{
            
            
            VStack{
                
                
                    CountryInfoRow(number: countryData.confirmed.formatNumber(), name: "Confirmed: ", color: .black)
                        .font(.custom("Helvetica Neue", size: 18))

                    CountryInfoRow(number: countryData.critical.formatNumber(), name: "Critical: ", color: .black)
                        .font(.custom("Helvetica Neue", size: 18))
                
                    CountryInfoRow(number: countryData.recovered.formatNumber(), name: "Recovered: ", color: .black)
                    .font(.custom("Helvetica Neue", size: 18))
                    
                    CountryInfoRow(number: countryData.deaths.formatNumber(), name: "Deaths: ", color: .black)
                        .font(.custom("Helvetica Neue", size: 18))

                    CountryInfoRow(number: String(format: "%.2f", countryData.fatalityRate), name: "Fatality Rate: ", color: .black)
                        .font(.custom("Helvetica Neue", size: 18))
                        
                    CountryInfoRow(number: String(format: "%.2f", countryData.recoveredRate), name: "Recovered Rate: ", color: .black)
                        .font(.custom("Helvetica Neue", size: 18))
                        
    
                
                
                }
            
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.4), lineWidth: 2))
            .padding([.top, .horizontal])
            .navigationBarTitle(countryData.country)
        }
        
        
        
    }
}

struct CountryInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CountryInfoView(countryData: testCountryData)
    }
}
