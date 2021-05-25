//
//  Breath.swift
//  Respiro
//
//  Created by Nick Karch on 5/24/21.
//

import Foundation


struct Breath : Identifiable, Decodable {
    var typeOfBreath : String
    var date : Date
    var time : Int // will be a number between 1 and 24 for simplicity
    var id:UUID? = UUID() // for identifiable protocol
    
    init(typeOfBreath:String, date:Date, time:Int) {
        self.typeOfBreath = typeOfBreath
        self.date = date
        self.time = time
    }
    
}

