//
//  NewsDataRowView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 12/11/2020.
//

import SwiftUI

struct NewsDataRowView: View {
    
    
    var newsData: NewsData
    
    
    
    
    var body: some View {
        
        HStack{
                
            Text(newsData.title)
                .font(.custom("Open Sans", size: 18))
                .frame(width: 120, alignment: .leading)
                .padding(.leading, 5)
            
            Spacer()
            Text(newsData.excerpt)
                .font(.custom("Open Sans", size: 18))
                .frame(height: 50, alignment: .trailing)
                .padding(.trailing, 5)
                .foregroundColor(.red)
                
            }
    }
}

struct NewsDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDataRowView(newsData: testNewsData)
    }
}
