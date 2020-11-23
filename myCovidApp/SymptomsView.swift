//
//  SymptomsView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 10/11/2020.
//

import SwiftUI

struct SymptomsView: View {
    
    
    
    
    var body: some View {
        
        
        NavigationView{
            ScrollView(showsIndicators: false){
        
            
        VStack{
            
            Text("Symptoms observed in hospitalized patients with COVID-19")
                .font(.title)
                .font(.custom("Helvetica Neue", size: 18))
                .padding()
            
            Spacer()
            
            Text("Below we list the symptoms, with percentages representing the proportion of patients displaying that symptom, as observed in hospitalized patients tested and identified as having laboratory-confirmed COVID-19 infection. These findings refer to hospitalized patients, therefore generally representing serious or critical cases. The majority of cases of COVID-19 (about 80%) is mild.")
                .font(.subheadline)
                .font(.custom("Helvetica Neue", size: 18))
                .fontWeight(.light)
                .cornerRadius(8)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.5), lineWidth: 2))
                .padding([.top, .horizontal])
            
            Group{
            
            SymptomsDataRowView(symptom: "Fever", percentage: "83%")
            
            SymptomsDataRowView(symptom: "Cough", percentage: "82%")
            
            SymptomsDataRowView(symptom: "Shortness of breath or difficulty breathing", percentage: "31%")
            
            SymptomsDataRowView(symptom: "Muscle ache", percentage: "11%")
            
            SymptomsDataRowView(symptom: "Confusion", percentage: "9%")
            }
            
            Group{
            SymptomsDataRowView(symptom: "Headache", percentage: "8%")
            
            SymptomsDataRowView(symptom: "Sore throat", percentage: "5%")
            
            SymptomsDataRowView(symptom: "Rhinorrhoea (runny nose)", percentage: "4%")
            
            SymptomsDataRowView(symptom: "Chest pain", percentage: "2%")
            
            SymptomsDataRowView(symptom: "Diarrhea", percentage: "2%")
            
            SymptomsDataRowView(symptom: "Nausea and vomiting", percentage: "1%")
            
            }
        
            Spacer(minLength: 15)
        
            
            Link("https://www.worldometers.symptoms/",
                  destination: URL(string: "https://www.worldometers.info/coronavirus/coronavirus-symptoms/")!)
                .font(.subheadline)
                .foregroundColor(.red)
            
            Spacer(minLength: 30)
            
        }
            
        }
        .navigationBarTitle("Symptoms", displayMode: .inline)
        }
        
    }

}




struct SymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomsView()
    }
}

