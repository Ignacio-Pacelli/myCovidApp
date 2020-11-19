//
//  CountryDetailView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 10/11/2020.
//

import SwiftUI


struct CountryDetailView: View {
    
    var number:String = "Err"
    var name:String = "Argentina"
    var color:Color = .black

    
    var body: some View {
        
            VStack{
                
                Text(self.name)
                    .font(.custom("Helvetica Neue", size: 19))
                    .padding(10)
                    .foregroundColor(self.color)
                
                    
                HStack{
                    
                    Text(self.number)
                        .font(.custom("Helvetica Neue", size: 25))
                        .padding(10)
                        .foregroundColor(self.color)
                    
                }//End of HStack

                
            }//End of VStack
            
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.4), lineWidth: 2))
            .padding([.top, .horizontal])
            
        
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView()
    }
}
