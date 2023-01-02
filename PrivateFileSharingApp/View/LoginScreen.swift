//
//  LoginScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 21/12/22.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View{
        VStack{
            Login()
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
struct Login: View{
    @ObservedObject var fieldVM = FieldViewModel()
    @State private var wrongEmail = 0
    @State var isLinkActive = false
    @State var isLoginPassActive = false
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    Image(systemName: "folder")
                        .resizable()
                        .frame(width: 70, height: 60)
                        .foregroundColor(.green)
                    //MARK:- Text add and set font size
                    TxtHeadingComponent(title: "Welcome Back!")
                    
                    TxtTagComponent(subTitle: "Please type your email to log in")
                    
//                    if (!fieldVM.isCorrect){
//                            TxtErrorComponent(error: "Please Enter valid email ")
//                        }
                    
                }
                .padding(.vertical,80)
                VStack(alignment: .leading){
                    TextFieldComponent(placeHolder: "Email Address", field: $fieldVM.email)
                    if !fieldVM.email.isEmpty{
                        TxtErrorComponent(error: fieldVM.emailPrompt)
                        
                   
                    }
                }
                .padding()
                .padding(.vertical,-40)
                // error
            
               
                VStack{
                
                        BtnBorderComponent(action: {
                            // self.fieldVM.emailConfirm()
                            authenticateUser(username: fieldVM.email)
                                                        
                            
                        }) {
                            Text("Next Step ")
                        }
                        
                        .opacity(fieldVM.isEmailConfirmCompleted ? 1 : 0.6)
                        .disabled(!fieldVM.isEmailConfirmCompleted)
                        .padding(.vertical,20)
//                    NavigationLink(destination: LoginPasswordScreen(), isActive: $isLoginPassActive){
//                    }
                    
                }
                .navigationDestination(isPresented: $isLoginPassActive){
                    LoginPasswordScreen()
                }
                .padding()
                VStack{
                    HStack{
                        Text("Don't have an account?")
//                        NavigationLink(destination: RegistrationScreen(), isActive: $isLinkActive){
                            BtnTextComponent(action: {
                                self.isLinkActive = true
                            }){
                                
                                
                                Text("Register")
                                    .foregroundColor(.green)
                                
//                            }
                           
                        }
                       
                    
                    }
                    .navigationDestination(isPresented: $isLinkActive){
                        RegistrationScreen()
                    }
                    
                }
           
            }
            
        }
        .navigationBarBackButtonHidden(true)
    
    }
    func authenticateUser(username: String) {
        if username.lowercased() == "bhumi@gmail.com" {
            wrongEmail = 0
            isLoginPassActive = true
//            if password.lowercased() == "abc123" {
//                wrongPassword = 0
//                showingLoginScreen = true
////            } else {
//                wrongPassword = 2
//            }
            }else {
                wrongEmail = 2
        }
    }
    
}
