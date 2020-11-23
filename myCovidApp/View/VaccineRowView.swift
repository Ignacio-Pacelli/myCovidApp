import SwiftUI

struct VaccineRowView: View {
    
    
    
    var imageVaccine:String
    var nameCompany:String
    var summaryVaccine:String
    var selfUrl:String

    
    
    var body: some View {
        
       
        VStack {

            Image(imageVaccine)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            HStack{
            VStack(alignment:.leading ) {
                
                Text(nameCompany.uppercased())
                    .font(.headline)
                    .font(.custom("Helvetica Neue", size: 25))
                
                
                
                Text(summaryVaccine)
                    .font(.subheadline)
                    .font(.custom("Helvetica Neue", size: 20))
                    .lineLimit(5)
            
             }
               
            
        }
        .padding(5)
        .cornerRadius(8)
            
        
    }
        
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.4), lineWidth: 2))
        .padding([.top, .horizontal])
        
    }
    
    
}

struct VaccineRowView_Previews: PreviewProvider {
    static var previews: some View {
        VaccineRowView(imageVaccine: "jansenn", nameCompany: "Jansenn", summaryVaccine: "The testing phase of the US multinational vaccine is paralyzed after a volunteer became ill, although Brazil has already authorized its resumption. The results could be known in late 2020 or early 2021", selfUrl: "https://www.janssen.com/")
    }
}
