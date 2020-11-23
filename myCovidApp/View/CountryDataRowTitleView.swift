//
//  CountryDataRowTitleView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 22/11/2020.
//

import SwiftUI

struct CountryDataRowTitleView: View {
    
    
    var body: some View {
        VStack{
        HStack{
            
            Text("Code")
                .font(.custom("Helvetica Neue", size: 20))
                .frame(width: 50, alignment: .leading)
                .font(.title)
                .foregroundColor(.black)
                .padding(.leading, 30)
                
            Text("Country")
                .font(.custom("Helvetica Neue", size: 20))
                .frame(width: 120, alignment: .leading)
                .foregroundColor(.black)
                .padding(.leading, 5)
                .font(.title)
            
            Spacer()
            Text("Confirmed")
                .font(.custom("Helvetica Neue", size: 20))
                .frame(width: 100, alignment: .leading)
                .padding(.trailing, 40)
                .foregroundColor(.red)
                .font(.title)
            }
        }
        
        
    }
}

struct CountryDataRowTitleView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowTitleView()
    }
}
