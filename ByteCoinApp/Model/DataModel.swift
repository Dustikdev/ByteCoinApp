//
//  DataModel.swift
//  ByteCoinApp
//
//  Created by Никита Швец on 23.11.2022.
//

import Foundation

struct DataModel {
    
    let rate: Double
    let currency: String
    
    var stringRate: String {
        return String(format: "%.4f", rate)
    }
}
