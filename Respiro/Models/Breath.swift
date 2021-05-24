//
//  Breath.swift
//  Respiro
//
//  Created by Nick Karch on 5/24/21.
//

import Foundation


enum BreathType {
    case happiness(Int)
    case wimhof(Int)
    case confidence(Int)
    case box(Int)
    case fire(Int)
    case relax(Int)
    case focus(Int)
    case None
}

struct Breath : Identifiable{
    var typeOfBreath : BreathType
    var date : Date
    var time : Int // will be a number between 1 and 24 for simplicity
    var id = UUID() // for identifiable protocol
    
    init(typeOfBreath:BreathType, date:Date, time:Int) {
        self.typeOfBreath = typeOfBreath
        self.date = date
        self.time = time
    }
    
}

