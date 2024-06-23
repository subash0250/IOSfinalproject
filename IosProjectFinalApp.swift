//
//  IosProjectFinalApp.swift
//  IosProjectFinal
//
//  Created by Subash Gaddam on 2024-06-19.
//

import SwiftUI
import Firebase

@main
struct IosProjectFinalApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        
        
        WindowGroup {
            ContentView()
        }
    }
}
