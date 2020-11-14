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
                .tag(0)
            
            NewsView()
                .tabItem {
                    Tab(imageName:"newspaper", text: "News")
                }
                .tag(1)
            
            MapContainerView()
                .edgesIgnoringSafeArea(.vertical)
                .tabItem {
                    Tab(imageName:"map", text: "Map")
                }
                .tag(2)
            
            VaccineView()
                .tabItem {
                    Tab(imageName:"cross", text: "Vaccines")
                }
                .tag(3)
            
            SymptomsView()
                .tabItem {
                    Tab(imageName:"waveform.path.ecg", text: "Symptoms")
                }
            
                .tag(4)
            
            
            
            
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

