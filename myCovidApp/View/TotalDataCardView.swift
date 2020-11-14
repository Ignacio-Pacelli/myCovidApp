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
        
        
        VStack{
            HStack{
                TotalDataView(number: totalData.recovered.formatNumber(), name: "Total Recovered",image: Image(uiImage: UIImage(systemName: "bandage")!))
                
                TotalDataView(number: totalData.deaths.formatNumber(), name: "Total Deaths",image: Image(uiImage: UIImage(systemName: "waveform.path.ecg")!))
                    
            }//End of HStack
            HStack{
                TotalDataView(number: String (format: "%.2f",totalData.recoveredRate), name: "Recovered %",image: Image(uiImage: UIImage(systemName: "bandage")!))
                
                TotalDataView(number: String (format: "%.2f",totalData.fatalityRate), name: "Death %",image: Image(uiImage: UIImage(systemName: "waveform.path.ecg")!))
            }//End of HStack
            
            
        }//End of VStack
        .frame(width:380 ,height: 200, alignment: .center)
        .padding(20)
    }
}

struct TotalDataCardView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCardView(totalData: testTotalData)
    }
}


