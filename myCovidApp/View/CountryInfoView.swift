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
                    CountryInfoRow(number: countryData.confirmed.formatNumber(), name: "Confirmed", color: .black)
                        .font(.custom("Open Sans", size: 18))

                    CountryInfoRow(number: countryData.critical.formatNumber(), name: "Critical", color: .black)
                        .font(.custom("Open Sans", size: 18))
                    
                    CountryInfoRow(number: countryData.deaths.formatNumber(), name: "Deaths", color: .black)
                        .font(.custom("Open Sans", size: 18))

                CountryInfoRow(number: String(format: "%.2f", countryData.fatalityRate), name: "Fatality Rate", color: .black)
                        .font(.custom("Open Sans", size: 18))
                        
                    CountryInfoRow(number: String(format: "%.2f", countryData.recoveredRate), name: "Recovered Rate", color: .black)
                        .font(.custom("Open Sans", size: 18))
                }
            
            .frame(width:380 ,height: 200, alignment: .center)
            .cornerRadius(10)
            .navigationBarTitle(countryData.country)
            .background(Color(.systemGray3))
            
        }
        
    }
}

struct CountryInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CountryInfoView(countryData: testCountryData)
    }
}
