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
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainScreen()
        }
    }
}
