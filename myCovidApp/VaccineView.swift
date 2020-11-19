//
//  VaccineView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 10/11/2020.
//
//
//  VaccineRowView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 15/11/2020.
//

import SwiftUI

struct VaccineView: View {
    
    
    
    var body: some View {
        
        
        NavigationView{
        ScrollView(showsIndicators: false){
            
            Group{
                
            
                VaccineRowView(imageVaccine: "pfizer-logo-color", nameCompany: "Pfizer", summaryVaccine: "The American pharmaceutical company Pfizer and the German company BioNTech have developed a vaccine that shows an efficacy of more than 90% in the third phase.", selfUrl: "")
                
            
                VaccineRowView(imageVaccine: "jansenn", nameCompany: "Jansenn", summaryVaccine: "The testing phase of the US multinational vaccine is paralyzed after a volunteer became ill, although Brazil has already authorized its resumption. The results could be known in late 2020 or early 2021.", selfUrl: "")
            
                VaccineRowView(imageVaccine: "Sinovac_Biotech_logo", nameCompany: "Sinovac", summaryVaccine: "The Coronavac vaccine has received authorization to vaccinate people at risk in China as an emergency. Final tests take place in Brazil, Indonesia and Turkey. Preliminary results are expected this November.", selfUrl: "")
            
                VaccineRowView(imageVaccine: "sputnik", nameCompany: "Sputnik", summaryVaccine: "The Russian vaccine has shown 92% effectiveness, according to the first interim analysis of the third phase of clinical trials carried out in Russia, reported the Russian Direct Investment Fund.", selfUrl: "")
            
                VaccineRowView(imageVaccine: "astrazeneca", nameCompany: "AstraZeneca", summaryVaccine: "The British-Swedish multinational's vaccine is in the final phase of clinical trials and the tests carried out so far have generated immunity in both young and adult patients.", selfUrl: "")
            
                VaccineRowView(imageVaccine: "sinopharm", nameCompany: "Sinopharm", summaryVaccine: "The Chinese pharmaceutical group's vaccine is in the final phase of trials being carried out in China, Brazil and Bahrain. Researchers claim it is safe.", selfUrl: "")
            
                
            }
            
            Group{
                
                VaccineRowView(imageVaccine: "Moderna-logo", nameCompany: "Moderna", summaryVaccine: "The American company has administered its vaccine to 30,000 people who have participated in the last phase of clinical trials. The results will be known throughout the month of November.", selfUrl: "")
            
                VaccineRowView(imageVaccine: "inovio", nameCompany: "Inovio", summaryVaccine: "The US health authorities have temporarily halted the last phase of the trials, while the company collects the required information.", selfUrl: "")
            
                VaccineRowView(imageVaccine: "bharat_bio", nameCompany: "Bharat Biotech", summaryVaccine: "The Indian pharmaceutical company has developed a vaccine qualified as safe in the second phase of the trials. Some 25,000 volunteers will receive the vaccine in the last phase of the research.", selfUrl: "")
            
                VaccineRowView(imageVaccine: "Novavax-logo", nameCompany: "Novavax", summaryVaccine: "The tests of the last phase of the trials of the vaccine of the American company will begin throughout the month of November.", selfUrl: "")
            
                VaccineRowView(imageVaccine: "Curevac", nameCompany: "CureVac", summaryVaccine: "The experimental vaccine from the German pharmaceutical company generates antibodies in patients who have participated in the trials. Before the end of the year they hope to vaccinate some 30,000 volunteers.", selfUrl: "")
            
            }
            
            
        }
        .navigationBarTitle("Vaccines", displayMode: .inline)
        }
        
    }
}

struct VaccineView_Previews: PreviewProvider {
    static var previews: some View {
        VaccineView()
    }
}

