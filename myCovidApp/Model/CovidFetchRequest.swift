//
//  CovidFetchRequest.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 09/11/2020.
//

import Foundation
import Alamofire
import SwiftyJSON

class CovidFetchRequest: ObservableObject {
    
   
    @Published var allCountries: [CountryData] = []
    @Published var totalData: TotalData = testTotalData
    
    let headers: HTTPHeaders = [
        "x-rapidapi-key": "d172e810e7msh47584ae043c146dp12d8eejsnb0b3c42c4a59",
        "x-rapidapi-host": "covid-19-data.p.rapidapi.com"
    ]
    
    init() {
        
        
        getListCountries()
        getCurrentTotal()
       
    }
    
    
    
    
    func getCurrentTotal() {
        

        AF.request("https://covid-19-data.p.rapidapi.com/totals", headers: headers).responseJSON { response in
            
            let result = response.data
            if result != nil {
                
                let json = JSON(result!)
                
                //print(json)
                
                let confirmed = json[0]["confirmed"].intValue
                let critical = json[0]["critical"].intValue
                let deaths = json[0]["deaths"].intValue
                let recovered = json[0]["recovered"].intValue
                
                self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
            }else{
                self.totalData = testTotalData
            }
            
        }
    
    }
    
    
    func getListCountries() {
        
        AF.request("https://covid-19-data.p.rapidapi.com/country/all", headers: headers).responseJSON { response in
            
            let result = response.value
            
            var allCount: [CountryData] = []
            
            
            if result != nil {
                
                let dataDictionary = result as! [Dictionary<String, AnyObject>]
                
                
                
                for countryData in dataDictionary {
                    
                   // print(countryData)
                    
                    let country = countryData["country"] as? String ?? "Error"
                    let code = countryData["code"] as? String ?? "Error"
                    let critical = countryData["critical"] as? Int ?? 0
                    let confirmed = countryData["confirmed"] as? Int ?? 0
                    let recovered = countryData["recovered"] as? Int ?? 0
                    let longitude = countryData["longitude"] as? Double ?? 0.0
                    let latitude = countryData["latitude"] as? Double ?? 0.0
                    let deaths = countryData["deaths"] as? Int ?? 0
                    
                    
                    let countryObject = CountryData(code: code, confirmed: confirmed, country: country, critical: critical, deaths: deaths, latitude: latitude, longitude: longitude, recovered: recovered)
                    
                    
                    //Every time that we call getListCountries this is going to get all the countries and put in our allCountries array
                    allCount.append(countryObject)
                    
                    
                }
                
            }
            //This will bring the country with most confirmed cases first
            self.allCountries = allCount.sorted(by: {$0.confirmed > $1.confirmed})
                
        }
    }

        
        

}

    
    


