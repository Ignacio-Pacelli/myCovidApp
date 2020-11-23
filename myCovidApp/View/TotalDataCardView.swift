//
//  TotalDataCardView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 10/11/2020.
//

import SwiftUI

struct TotalDataCardView: View {
    
    var totalData: TotalData
    
    
    var body: some View {
        
        
        ScrollView(.horizontal, showsIndicators: false){
            
            
        VStack{
            
            HStack{
                
                
                TotalDataView(number: totalData.recovered.formatNumber(), name: "Total Recovered",image: Image(uiImage: UIImage(systemName: "bandage")!))
                    .frame(width: 300)
                
                
                TotalDataView(number: totalData.deaths.formatNumber(), name: "Total Deaths",image: Image(uiImage: UIImage(systemName: "waveform.path.ecg")!))
                    .frame(width: 300)
                
                
                TotalDataView(number: String (format: "%.2f",totalData.recoveredRate), name: "Recovered %",image: Image(uiImage: UIImage(systemName: "bandage")!))
                    .frame(width: 300)
                
                TotalDataView(number: String (format: "%.2f",totalData.fatalityRate), name: "Death %",image: Image(uiImage: UIImage(systemName: "waveform.path.ecg")!))
                    .frame(width: 300)
            
            }//End of HStack
            
            
        }//End of VStack
        .cornerRadius(12)
        .padding()
        .background(Color(.black))
        
        }
        
    }
}

struct TotalDataCardView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCardView(totalData: testTotalData)
    }
}


