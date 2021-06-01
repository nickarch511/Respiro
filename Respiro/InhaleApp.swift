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
    
    init() {
        FirebaseApp.configure()
    }
    
    // Here is where the code will go for writing to the Database
    func addBreathInstance() {
        let db = Firestore.firestore()
        let collection = db.collection("breaths")
        
        // create a document
        collection.document(String(id))
        
        // Do more stuff
    }
    
    
    
    var body: some Scene {
        WindowGroup {
            MainScreen()
        }
    }
}
