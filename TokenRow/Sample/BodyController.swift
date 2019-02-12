//
//  BodyController.swift
//  Sample
//
//  Created by Alex Nolasco on 2/12/19.
//

import Foundation

final class BodyController {
    
    
    func data() -> [BodyPart] {
        return [
            BodyPart(id: "1", description:"Ear"),
            BodyPart(id: "2", description:"Arm"),
            BodyPart(id: "3", description:"Leg"),
            BodyPart(id: "4", description:"Head"),
            BodyPart(id: "5", description:"Brain"),
            BodyPart(id: "6", description:"Back")
        ]
    }
    
    func existing() -> Set<BodyPart> {
        return []
    }
}
