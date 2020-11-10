//
//  ListHeaderView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 09/11/2020.
//

import SwiftUI

struct ListHeaderView: View {
    
    
    
    
    var body: some View {
        
   
        
        HStack{
            
            Text("Code")
                .fontWeight(.bold)
                .font(.custom("Open Sans", size: 18))
                .frame(width: 50, alignment: .leading)
                .padding(.leading, 50)
                
            Text("Country")
                .fontWeight(.bold)
                .font(.custom("Open Sans", size: 18))
                .frame(width: 120, alignment: .leading)
                .padding(.leading, 10)
            
            Spacer()
            Text("Confirmed")
                .fontWeight(.bold)
                .foregroundColor(.red)
                .font(.custom("Open Sans", size: 18))
                .frame(height: 50, alignment: .trailing)
                .padding(.trailing, 47)
            }
        .background(Color(.white))
        .padding(-8)
        
        
    }
    
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
