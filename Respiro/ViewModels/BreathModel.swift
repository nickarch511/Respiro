//
//  BreathModel.swift
//  Respiro
//
//  Created by Nick Karch on 5/24/21.
//

import Foundation


class BreathModel : ObservableObject {
    @Published var breaths = [Breath]()
    @Published var breathHash = [String:Int]()
    
    init() {
        let path = Bundle.main.path(forResource: "breathstats", ofType: "json")
        if let path = path {
            let url = URL(fileURLWithPath: path)
            do {
                let data = try Data(contentsOf: url)
                
                do {
                    let decoder = JSONDecoder()
                    breaths = try decoder.decode([Breath].self, from: data)
                } catch {
                    print(error)
                }
                
            } catch {
                print(error)
            }
        }
        
        let path2 = Bundle.main.path(forResource: "breathsdata", ofType: "json")
        if let path2 = path2 {
            let url = URL(fileURLWithPath: path2)
            do {
                let data = try Data(contentsOf: url)
                
                do {
                    let decoder = JSONDecoder()
                    breathHash = try decoder.decode([String : Int].self, from: data)
                } catch {
                    print(error)
                }
                
            } catch {
                print(error)
            }
        }
        
        
    }
    
    
    
}




