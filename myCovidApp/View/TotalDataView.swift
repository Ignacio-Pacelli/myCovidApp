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
                    .font(.custom("Helvetica Neue", size: 19))
                    .font(.subheadline)
                    .padding(10)
                    .frame(width: 200, height: 50, alignment: .leading)
                    .foregroundColor(self.color)
                    
                
                
               
                Text(self.number)
                    .font(.custom("Helvetica Neue", size: 19))
                    .fontWeight(.bold)
                    .padding(10)
                    .frame(width: 200, height: 30, alignment: .leading)
                    .foregroundColor(self.color)
                
                
                Spacer()
                
               
                    
                Button(action: {
                    //que debe hacer el boton
                    
                }) {
                    
                    //Como debe verse el boton
                    Text("View")
                        .font(.custom("Helvetica Neue", size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 50,height: 50, alignment: .center)
                        .background(Color(.systemGray5))
                        .cornerRadius(30)
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2))
                        .padding()
                    
                    
                    
                }
                
           
            }//End of VStack
            
            .frame(width: 300, height: 200, alignment: .topLeading)
            .background(Color(.white))
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.4), lineWidth: 2))
            .padding([.top, .horizontal])
        
            
        
        
        
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView()
    }
}
