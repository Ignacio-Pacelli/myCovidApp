//
//  ListView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 09/11/2020.
//

import SwiftUI

struct StatisticView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText = ""
    @State var isSearchVisible = false
    
    var body: some View {
        
        
        NavigationView{
            
            VStack{
                if isSearchVisible{
                    SearchView(searchText: $searchText)
                }
                
                
                TotalDataCardView(totalData: covidFetch.totalData)
                //Here we are filtering our list depend on what search parameter we have
                
                List{
                    
                    ForEach(covidFetch.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                        //And we are returning the countryData Object
                    }, id: \.country) {countryData in
                        NavigationLink(
                            destination: CountryInfoView(countryData: countryData)){
                            CountryDataRowView(countryData: countryData)
                            
                        }
                            
                }
                    
            }//End os VStack
            
                .navigationBarTitle("Statistics", displayMode: .inline)
                .navigationBarItems(trailing:
                   Button(action: {
                    self.isSearchVisible.toggle()
                    
                    //If is not visible
                    if !self.isSearchVisible{
                        
                        self.searchText = ""
                    }
                    
                   }, label: {
                        Image(systemName: "magnifyingglass")
                   })
                
                
                )
        }//End of NavigationView
        
            .background(Color(.black))
            
            
            
        
            
    }
        .background(Color(.black))
    
}
    
}
