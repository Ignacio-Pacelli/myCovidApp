//
//  SearchView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 09/11/2020.
//

import SwiftUI

struct SearchView: View {
    
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack{
            TextField("Country...", text: $searchText)
                .padding(.leading, 40)
        }
        
        .frame(height: 50)
        .background(Color(.systemGray5))
    }
}

