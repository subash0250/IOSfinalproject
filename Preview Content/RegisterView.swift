//
//  RegisterView.swift
//  IosProjectFinal
//
//  Created by Subash Gaddam on 2024-06-19.
//

import SwiftUI
import Firebase


struct RegisterView: View {
    
    @Binding var isPresented: Bool
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var erroralert: String = ""
    @State private var alertMessage = " "
    @State private var isShowalert = false
    @State private var isRegistered: Bool = false
    
    var body: some View {
        NavigationView{
        VStack{
            
            Image(.libraryLogo).resizable().frame(width:250, height:200).padding()
            
            Text("CreateAccount").font(.largeTitle).fontWeight(.bold).padding(.bottom,40)
            
            TextField("Email", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal,40)
            SecureField("password::",text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal,40)
            SecureField("Confirm password::",text: $confirmPassword).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal,40)
            Button(action:SignUp) {
                Text("SignUp")
            }.padding().font(.headline).foregroundColor(.white).background(Color.green).frame(width: 240, height: 60)
            Button(action:{isPresented = false}) {
                Text("Cancel")
            }.padding().font(.headline).foregroundColor(.red).background(Color.white).cornerRadius(16.0).frame(width: 240, height: 60)
           
        }.padding()
            if !erroralert.isEmpty {
                Text(erroralert)
                    .foregroundColor(.red)
                    .padding()
            }

//            NavigationLink(destination: MainContentView(userEmail: "subash@gmail.com"), isActive: $isRegistered) {
//                EmptyView()
//            }

    }
    }
    private func SignUp(){
      
        guard password == confirmPassword 
        else {
                   erroralert = "Passwords do not match"
                   isShowalert = true
                   return
               }
        Auth.auth().createUser(withEmail: email, password: password){
            authResult, error in
            if let error = error{
                
                alertMessage=error.localizedDescription
                isShowalert = true
                
            }else{
                
                isPresented = true
                alertMessage = "Registration successful"
                        isShowalert = true
                isRegistered = true
            }
            
            
        }
    }
}
struct SignUpview_preview: PreviewProvider{
    
    @State static var isPresented = true
    static var previews: some View{
        RegisterView(isPresented: $isPresented)
    }
}



