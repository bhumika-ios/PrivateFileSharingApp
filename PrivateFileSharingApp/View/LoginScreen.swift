//
//  LoginScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 21/12/22.
//

import SwiftUI

struct LoginScreen: View {
    @ObservedObject var fieldVM = FieldViewModel()
    @State var isLinkActive = false
    @State var isLoginPassActive = false
  
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    //MARK:- Text add and set font size
                    TxtHeadingComponent(title: "Welcome Back!")
                    
                    TxtTagComponent(subTitle: "Please type your email to log in")
                    
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
                
                VStack{
                    NavigationLink(destination: LoginPasswordScreen(), isActive: $isLoginPassActive){
                        BtnBorderComponent(action: {
                            self.fieldVM.emailConfirm()
                            self.isLoginPassActive = true
                        }) {
                            Text("Next Step ")
                        }
                        .opacity(fieldVM.isEmailConfirmCompleted ? 1 : 0.6)
                        .disabled(!fieldVM.isEmailConfirmCompleted)
                        .padding(.vertical,20)
                    }
                }
                .padding()
                VStack{
                    HStack{
                        Text("Don't have an account?")
                        NavigationLink(destination: RegistrationScreen(), isActive: $isLinkActive){
                            BtnTextComponent(action: {
                                self.isLinkActive = true
                            }){
                                
                                
                                Text("Register")
                                    .foregroundColor(.green)
                                
                            }
                        }
                    }
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
    
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
