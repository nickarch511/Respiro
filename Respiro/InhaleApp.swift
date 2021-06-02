//
//  InhaleApp.swift
//  Inhale
//
//  Created by Nick Karch on 5/14/21.
//

import SwiftUI
import Firebase

@main
struct InhaleApp: App {
    
    @AppStorage("id") var id = UIDevice.current.identifierForVendor!.uuidString
    @State var breathModel:BreathModel = BreathModel()
    
    init() {
        FirebaseApp.configure()
        initializeDatabaseListener()
        
    }
    
    // Here is where the code will go for writing to the Database
    func addBreathInstance(breath:Breath) {
        let db = Firestore.firestore()
        let collection = db.collection(String(id))
        
        // Create a document
        let document = collection.document()
        
        // Add the given breath
        document.setData(["typeOfBreath": breath.typeOfBreath, "numBreaths": breath.numBreaths, "date": breath.date ?? ""])
    }
    
    func initializeDatabaseListener() {
        let db = Firestore.firestore()
        let collection = db.collection(String(id))
        collection.addSnapshotListener { (docSnapshot, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let docSnapshot = docSnapshot {
                // Code for Snapshot
                var breathsArray = [Breath]()
                for document in docSnapshot.documents {
                    let data = document.data()
                    let breath:Breath = Breath(typeOfBreath: data["typeOfBreath"] as! String, numBreaths: data["numBreaths"] as! Int, date: data["date"] as! String)
                    breathsArray.append(breath)
                }
                breathModel.breaths = breathsArray
                
                // Add code to parse breathModel.breaths and create the breathsHash 
                
                
            } else {
                print("Collection does not exist")
            }
        }
    }
    
    
    
    var body: some Scene {
        WindowGroup {
            MainScreen()
        }
    }
}
