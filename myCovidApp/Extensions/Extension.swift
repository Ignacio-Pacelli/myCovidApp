//
//  Extension.swift
//  myCovidApp
//
//  Created by Nacho Pacelli on 09/11/2020.
//

import Foundation

extension Int{
    
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = "."
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
        
                    
    }
}
