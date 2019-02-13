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
            BodyPart(id: "3", description:"Left Leg"),
            BodyPart(id: "4", description:"Head"),
            BodyPart(id: "5", description:"Brain"),
            BodyPart(id: "6", description:"Right Leg"),
            BodyPart(id: "7", description:"The Gallbladder, This is a muscular sac-like structure that is attached to the liver. The gallbladder is around 8 cm in length and 4 cm in diameter"),
            BodyPart(id: "8", description:"The stomach is a muscular, hollow organ in the gastrointestinal tract of humans and many other animals, including several invertebrates. The stomach has a dilated structure and functions as a vital digestive organ. In the digestive system the stomach is involved in the second phase of digestion, following mastication (chewing).")

        ]
    }
    
    func existing() -> Set<BodyPart> {
        return []
    }
}
