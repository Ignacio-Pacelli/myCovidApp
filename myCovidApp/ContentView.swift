//
//  ContentView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 09/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        TabView {
            StatisticView()
                .tabItem {
                    Tab(imageName:"chart.bar", text: "Statistics")
                }
            
            
            NewsView()
                .tabItem {
                    Tab(imageName:"newspaper", text: "News")
                }
            
            
            VaccineView()
                .tabItem {
                    Tab(imageName:"cross", text: "Vaccines")
                }
            
            
            SymptomsView()
                .tabItem {
                    Tab(imageName:"waveform.path.ecg", text: "Symptoms")
                }
            
            
            
            
            
            
        }
        
        
    }
}

private struct Tab: View{
    
    let imageName: String
    let text: String
    
    var body: some View{
        VStack{
            Image(systemName: imageName)
            Text(text)
        }
        
    }
    
    
}

