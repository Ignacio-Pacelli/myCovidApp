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
                .font(.custom("Helvetica Neue", size: 18))
                .frame(width: 50, alignment: .leading)
                .padding(.leading, 15)
                
            Text(countryData.country)
                .font(.custom("Helvetica Neue", size: 18))
                .frame(width: 120, alignment: .leading)
                .padding(.leading, 5)
            
            
            Spacer()
            Text(countryData.confirmed.formatNumber())
                .font(.custom("Helvetica Neue", size: 18))
                .frame(width: 100, alignment: .trailing)
                .padding(.trailing, 5)
                .foregroundColor(.red)
                
            }
       
        
    }
    


}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
