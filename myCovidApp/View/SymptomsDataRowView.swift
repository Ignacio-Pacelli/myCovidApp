//
//  SymptomsDataRowView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 16/11/2020.
//

import SwiftUI

struct SymptomsDataRowView: View {
    
    var symptom:String
    var percentage:String

    
    
    
    var body: some View {
        
        
            HStack{
            
                Text(symptom)
                    .font(.custom("Helvetica Neue", size: 18))
                    .frame(width: 200, alignment: .leading)
                    .padding(.leading, 15)
                    .lineLimit(2)
                
                Spacer()
            
                Text(percentage)
                    .font(.custom("Helvetica Neue", size: 18))
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(Color(.red))
                    .cornerRadius(30)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.4), lineWidth: 2))
                    
                    
                
            }
            
            .cornerRadius(8)
            .padding([.top, .horizontal])
           
}
}

struct SymptomsDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomsDataRowView(symptom: "Fever", percentage: "87.9%")
    }
}
