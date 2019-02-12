//
//  BodyPart.swift
//  Sample
//
//  Created by Alex Nolasco on 2/12/19.
//

import TokenRow


struct BodyPart {
    let id: String
    let description: String
}

extension BodyPart : TokenSearchable {
    var displayString: String {
        return description
    }
    
    var longDisplayString: String {
        return description
    }
    
    func contains(token: String) -> Bool {
        return description.contains(token:token)
    }
    
    var identifier: NSObject {
        return id as NSObject
    }
}
