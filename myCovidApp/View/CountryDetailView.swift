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
        
        GeometryReader{ geometry in
            
            VStack{
                
                Text(self.name)
                    .font(.custom("Open Sans", size: 19))
                    .padding(10)
                    .foregroundColor(self.color)
                    
                HStack{
                    
                    Text(self.number)
                        .font(.custom("Open Sans", size: 25))
                        .padding(10)
                        .foregroundColor(self.color)
                    
                }//End of HStack

                
            }//End of VStack
            
            .frame(width: geometry.size.width, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color("TotalDataColorBackground"))
            .cornerRadius(8.0)
            
           
            
            
            
            
        }//End of Geometry
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView()
    }
}
