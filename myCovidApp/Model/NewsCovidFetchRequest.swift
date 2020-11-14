//
//  NewsCovidFetchRequest.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 12/11/2020.
//

import Foundation
import Alamofire
import SwiftyJSON


class NewsCovidFetchRequest: ObservableObject {

    @Published var allNewses: [NewsData] = []
    
    let headers: HTTPHeaders = [
        "x-rapidapi-key": "1159b53032msh71d16f42f5f2570p115937jsnd8fc9be88e43",
        "x-rapidapi-host": "coronavirus-smartable.p.rapidapi.com"
    ]


    init() {
        
        getNews()
        
    }
    
    func getNews() {
    
        AF.request("https://coronavirus-smartable.p.rapidapi.com/news/v1/US/", headers: headers).responseJSON { response in
        
            let result = response.value
        
            var allNews: [NewsData] = []
            
            if result != nil {
            
                 debugPrint(response)
            
                
                let dataDictionary = result as! [Dictionary<String, AnyObject>]
            
                for newsData in dataDictionary {
                    
                    let id = newsData["id"] as? String ?? "Error"
                    let score = newsData["score"] as? Double ?? 0.0
                    let author = newsData["author"] as? String ?? "Error"
                    let clean_url = newsData["clean_url"] as? String ?? "Error"
                    let link = newsData["link"] as? String ?? "Error"
                    
                    
                    
                    let newsObject = NewsData(path: <#T##String#>, images: <#T##String#>, excerpt: <#T##String#>, title: <#T##String#>, originalUrl: <#T##String#>, topics: <#T##String#>)
           
                    //Every time that we call getListCountries this is going to get all the countries and put in our allCountries array
                    
                    allNews.append(newsObject)
                }

            }
 
        }
}
}


