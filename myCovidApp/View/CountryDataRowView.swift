//
//  CountryDataRowView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 09/11/2020.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    var body: some View {
        
        
        HStack{
            
            Text(countryData.code)
                .font(.custom("Open Sans", size: 18))
                .frame(width: 50, alignment: .leading)
                .padding(.leading, 15)
                
            Text(countryData.country)
                .font(.custom("Open Sans", size: 18))
                .frame(width: 120, alignment: .leading)
                .padding(.leading, 5)
            
            Image(systemName: "info.circle")
            
            Spacer()
            Text(countryData.confirmed.formatNumber())
                .font(.custom("Open Sans", size: 18))
                .frame(height: 50, alignment: .trailing)
                .padding(.trailing, 5)
                .foregroundColor(.red)
                
            }
        .background(Color(.systemGray6))
        .cornerRadius(15)
        
    }
   


}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
