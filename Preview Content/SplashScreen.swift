//
//  SplashScreen.swift
//  IosProjectFinal
//
//  Created by Subash Gaddam on 2024-06-19.
//

import SwiftUI

struct SplashScreenview: View {
    var body: some View {
       
        VStack{
            
            Image(.libraryLogo).resizable().frame(width:250, height:200)
//                .scaledToFit()
            Text("Welcome to Myapp").font(.largeTitle).padding()
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
#Preview {
    SplashScreenview()
}
