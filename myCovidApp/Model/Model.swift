//
//  Model.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 09/11/2020.
//

import Foundation


struct TotalData {
    let confirmed: Int
    let critical: Int
    let deaths: Int
    //let lastChange: Date
    //let lastUpdate: Date
    let recovered: Int
    
    var fatalityRate: Double{
        return (100.00 * Double(deaths)) / Double (confirmed)
    }
    
    var recoveredRate: Double{
        return (100.00 * Double(recovered)) / Double (confirmed)
    }
}


struct CountryData {
    let code:String
    let confirmed:Int
    let country:String
    let critical:Int
    let deaths:Int
  //let lastChange:Date
  //let lastUpdate:Date
    let latitude:Double
    let longitude:Double
    let recovered:Int
    
    var fatalityRate: Double{
        return (100.00 * Double(deaths)) / Double (confirmed)
    }
    
    var recoveredRate: Double{
        return (100.00 * Double(recovered)) / Double (confirmed)
    }
}

struct NewsData {
    let id:String
    let score:Double
    let author:String
    let clean_url:String
    let link:String
    //let published_date:Date
    let rank:Int
    let summary:String
    let title:String
}





let testTotalData = TotalData(confirmed: 1000, critical: 100, deaths: 200, recovered: 50)
let testCountryData = CountryData(code: "ARG", confirmed: 1000, country: "Argentina", critical: 300, deaths: 100, latitude: 0.0, longitude: 0.0, recovered: 50)
let testNewsData = NewsData(id: "666no89", score: 6.8, author: "Ignacio Pacelli", clean_url: "mirror.co.uk", link: "https://www.mirror.co.uk/science/new-long-covid-symptom-experts-22962834", rank: 5, summary: "Get our daily coronavirus email newsletter with all the news you need to know direct to your inbox Sign up Thank you for subscribing We have more newsletters Show me See our privacy notice Invalid Email While many Covid-19 patients only experience symptoms for a matter of days, others are plagued with issues for months after their infection.", title: "Coronavirus")



