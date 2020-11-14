//
//  SymptomsView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 10/11/2020.
//

import SwiftUI

struct SymptomsView: View {
    
    var body: some View {
        
        
        List{
            
           
            HStack{
            
                Text("Fever")
                    .font(.custom("Open Sans", size: 20))
                    .frame(width: 200, alignment: .leading)
                    .padding(.leading, 20)
            
                Spacer()
                Text("89,9 %")
                    .font(.custom("Open Sans", size: 20))
                    .frame(height: 50, alignment: .trailing)
                    .padding(.trailing, 20)
                    .foregroundColor(.red)
            
            
        
        
        }
            
    }

}




struct SymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomsView()
    }
}
}
