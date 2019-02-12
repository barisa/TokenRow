//
//  Stock.swift
//  Sample
//
//  Created by Alex Nolasco on 2/11/19.
//

import Foundation
import TokenRow

struct Stock {
    let symbol: String
    let companyName: String
    let beta: Float
}

extension Stock : TokenSearchable {
    var displayString: String {
        return symbol
    }
    
    var longDisplayString: String {
        return companyName
    }
    
    func contains(token: String) -> Bool {
        return companyName.contains(token:token)
    }
    
    var identifier: NSObject {
        return symbol as NSObject
    }
}
