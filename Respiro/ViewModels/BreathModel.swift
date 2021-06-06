//
//  BreathModel.swift
//  Respiro
//
//  Created by Nick Karch on 5/24/21.
//

import Foundation
import Firebase

class BreathModel : ObservableObject {
    @Published var breaths = [Breath]()
    @Published var breathHash = [String:Int]()
    var id = UIDevice.current.identifierForVendor!.uuidString
    
    init() {
        print("Starting JSON init")
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
    
    // Here is where the code will go for writing to the Database
    func addBreathInstance(breath:Breath) {
        if breath.numBreaths > 0 {
            let db = Firestore.firestore()
            let collection = db.collection(String(id))
            
            // Create a document
            let document = collection.document()
            
            // Add the given breath
            document.setData(["typeOfBreath": breath.typeOfBreath, "numBreaths": breath.numBreaths, "date": breath.date ?? ""])
        }
    }
    
//    func write_to_json() {
//        let path = Bundle.main.path(forResource: "breathsobjects", ofType: "json")
//        if let path = path {
//            let url = URL(fileURLWithPath: path)
//            do {
//                let encoder = JSONEncoder()
//                encoder.outputFormatting = .prettyPrinted
//
//                let json_contents = try encoder.encode(breaths)
//                if String(data: json_contents, encoding: .utf8) != nil {
//                    // write the data to the json file
//                    do {
//                        let data = Data(json_contents)
//                        try data.write(to: url)
//                    } catch {
//                        print(error)
//                    }
//                }
//            } catch {
//                print(error)
//            }
//
//
//        }
//
//        let path2 = Bundle.main.path(forResource: "breathstats", ofType: "json")
//        if let path2 = path2 {
//            let url = URL(fileURLWithPath: path2)
//            do {
//                let encoder = JSONEncoder()
//                encoder.outputFormatting = .prettyPrinted
//
//                let json_contents = try encoder.encode(breathHash)
//                if String(data: json_contents, encoding: .utf8) != nil {
//                    // write the data to the json file
//                    do {
//                        let data = Data(json_contents)
//                        try data.write(to: url)
//                    } catch {
//                        print(error)
//                    }
//                }
//                print(json_contents)
//
//            } catch {
//                print(error)
//            }
//
//
//        }
//
//
//
//    }
    
    
}




