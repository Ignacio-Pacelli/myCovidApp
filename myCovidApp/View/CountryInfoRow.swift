//
//  CountryInfoRow.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 13/11/2020.
//

import SwiftUI

struct CountryInfoRow: View {
    
    var number:String = "Err"
    var name:String = "Argentina"
    var color:Color = .black
    
    

    var body: some View {
        
    
        VStack{
                
                HStack{
                Text(self.name)
                    .font(.custom("Open Sans", size: 18))
                    .padding(5)
                
                Spacer()
                Text(self.number)
                    .font(.custom("Open Sans", size: 21))
                    .padding(5)
                }
            }
            
        .padding(.leading)
        .padding(.trailing)
        
        }
        
    
}

struct CountryInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryInfoRow()
    }
}
