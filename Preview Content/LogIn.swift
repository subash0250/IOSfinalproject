//
//  LogIn.swift
//  IosProjectFinal
//
//  Created by Subash Gaddam on 2024-06-19.
//

import SwiftUI

struct LogIn: View {
    
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isClicked: Bool = false
    var body: some View {
        
        NavigationView{
            VStack{
                
                Image(.libraryLogo).resizable().frame(width:300, height:250).padding()
                //                .scaledToFit()
                
                Text("Log In").padding(20).font(.title).fontWeight(.bold).foregroundColor(.blue)
                
                TextField("Email", text: $email).textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("password::",text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("LogIn") {
                    
                }.padding().background(Color.blue).foregroundColor(.white)
                
                
                NavigationLink("New to Library", destination: RegisterView(isPresented: $isClicked))
             
                }
            }.padding()
        }
    }
    



#Preview {
    LogIn()
}
