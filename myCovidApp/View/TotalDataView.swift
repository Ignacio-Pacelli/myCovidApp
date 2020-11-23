//
//  TotalDataView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 10/11/2020.
//

import SwiftUI

struct TotalDataView: View {
    
    var number:String = "Err"
    var name:String = "Total Recovered"
    var color:Color = .black
    var image:Image = Image(uiImage: UIImage(systemName: "cloud.sun")!)
    
    var body: some View {
        
        
        
        
            VStack{
                
                 Text(self.name)
                    .font(.custom("Helvetica Neue", size: 25))
                    .font(.title)
                    .padding()
                    .frame(width: 250, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    
               
                HStack{
               
                Text(self.number)
                    .font(.custom("Nanum Gothic", size: 33))
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 200, height: 80, alignment: .center)
                    .foregroundColor(.red)
                
                    image.self
                        
                }//End of HStack
                
            }//End of VStack
            
            .frame(width: 250, height: 150, alignment: .center)
            .background(Color(.darkGray))
            .cornerRadius(8)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.4), lineWidth: 2))
            .padding([.top, .horizontal])
        
            
        
        
        
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView()
    }
}
