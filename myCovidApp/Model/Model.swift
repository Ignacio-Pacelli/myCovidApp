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









let testTotalData = TotalData(confirmed: 1000, critical: 100, deaths: 200, recovered: 50)

let testCountryData = CountryData(code: "ARG", confirmed: 1000, country: "Argentina", critical: 300, deaths: 100, latitude: 0.0, longitude: 0.0, recovered: 50)

