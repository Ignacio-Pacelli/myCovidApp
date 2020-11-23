//
//  NewsView.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 10/11/2020.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit




struct NewsView: View {
    
   
    @ObservedObject var list = getNews()
    
    var body: some View {
      
        NavigationView{
            
            List(list.datas){i in
                
                NavigationLink(destination:
                 webView(url: i.url)
                                .navigationBarTitle("", displayMode: .inline)) {
                    
                    HStack(spacing: 15){
                        
                        VStack(alignment: .leading, spacing: 10){
                            
                            Text(i.title).fontWeight(.heavy)
                            Text(i.description).lineLimit(2)
                            
                            
                        }
                        
                        if i.image != ""{
                            
                            WebImage(url: URL(string: i.image), options: .highPriority, context: nil)
                                .resizable()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                        
                        }
                        
                       
                    }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
                
                
                
            }.navigationBarTitle("News")
            
        }
    }
}


struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}


struct dataType: Identifiable {
    
    var id: String
    var title: String
    var description: String
    var url: String
    var image: String
    
}



class getNews: ObservableObject  {
    
    @Published var datas = [dataType]()
    
    
    init() {
        
    
    let source = "https://newsapi.org/v2/top-headlines?q=health&apiKey=62ecac24235a45b08e7ee1a6828aa1c3"
    let url = URL(string: source)!
    let session = URLSession(configuration: .default)
    
    session.dataTask(with: url) {(data, _, err) in
        
        if err != nil{
            
            print((err?.localizedDescription)!)
            return
            
        }
        
        let json = try! JSON(data: data!)
        
        for i in json["articles"]{
            
            let title = i.1["title"].stringValue
            let description = i.1["description"].stringValue
            let url = i.1["url"].stringValue
            let image = i.1["urlToImage"].stringValue
            let id = i.1["publishedAt"].stringValue
            
            DispatchQueue.main.async {
                
                 self.datas.append(dataType(id: id, title: title, description: description, url: url, image: image))
            }
            
            
            
           
        }
            
            
    }.resume()
        
        
    }
        
}

struct webView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context:UIViewRepresentableContext<webView>) -> WKWebView{
        
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView:WKWebView, context: UIViewRepresentableContext<webView>) {
        
        
        
        
    }
    
}
