//
//  Breath.swift
//  Respiro
//
//  Created by Nick Karch on 5/24/21.
//

import Foundation


struct Breath : Identifiable, Decodable, Encodable {
    var typeOfBreath : String
    var numBreaths : Int
    var date : DateComponents
    var id:UUID? = UUID() // for identifiable protocol
    
    init(typeOfBreath:String, numBreaths:Int, date:DateComponents) {
        self.typeOfBreath = typeOfBreath
        self.date = date
        self.numBreaths = numBreaths
    }
    
}

