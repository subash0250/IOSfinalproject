//
//  ContentView.swift
//  IosProjectFinal
//
//  Created by Subash Gaddam on 2024-06-19.
//


import SwiftUI
import Firebase

struct ContentView: View {
    
//    @State private var email: String = ""
//    @State private var password: String = ""
//    @State private var alertMessage = " "
//    @State private var isShowingalert = false
//    @State private var isShowingSignUp = false
//    @State private var isAuthenticated = false
//    @State private var userEmail = ""
    @State private var showsplashScreen = true

    
    var body: some View {
        
        ZStack {
            LogIn().opacity(showsplashScreen ? 0 : 1)
            if showsplashScreen{
                SplashScreenview().transition(.opacity)
            }
        }.onAppear{
            
            DispatchQueue.main.asyncAfter(deadline: .now()+4){
                withAnimation{
                    showsplashScreen=false
                }
            }
        }
        
//        NavigationView{
//            
//            if isAuthenticated{
//                
//                MainContentView(userEmail: userEmail)
//            }
////            else{
////                
////                VStack{
////                    
////                    Text("Welcome to central Library ").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.bold).padding(.bottom,40)
////                    TextField("Email", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal,40)
////                    SecureField("password::",text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal,40)
////                    Button(action: signIn) {
////                        Text("SignIn")
////                    }.padding().background(Color.blue).foregroundColor(.white).cornerRadius(15.0).frame(width: 240,height: 60)
////                    
////                    Button(action:{isShowingSignUp = false}) {
////                        Text("Cancel")
////                    }.padding().font(.headline).foregroundColor(.red).background(Color.white).cornerRadius(16.0).frame(width: 240, height: 60)
////                }.padding()
////                
////                    .alert(isPresented: $isShowingalert) {
////                        Alert(title: Text("Error"),message: Text(alertMessage),dismissButton: .default(Text("okay")))
////                        
////                              }
////                            .sheet(isPresented: $isShowingalert) {
////                                
////                                
////                               RegisterView(isPresented: $isShowingSignUp)
////                            }
////                
////            }
//        }
    }
    
    
//    private func signIn() {
//
//        
//        
//    }
}

#Preview{
    ContentView()
}
    
//struct Content_preview: PreviewProvider{
//    
//    @State static var isPresented = true
//    static var previews: some View
//    {
//        ContentView()
//    }
//}
