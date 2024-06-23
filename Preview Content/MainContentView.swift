//
//  MainContentView.swift
//  IosProjectFinal
//
//  Created by Subash Gaddam on 2024-06-19.
//

import SwiftUI

struct MainContentView: View {
    
    var userEmail : String
    var body: some View {
        VStack{
            Text("Welcome to home Page::").font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding()
            
            Text("Logged by: \(userEmail)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
        }
    }
}

struct MainContentView_preview : PreviewProvider{
    
    static var previews: some View{
        
        MainContentView(userEmail: "subash@gmail.com")
    }
}

