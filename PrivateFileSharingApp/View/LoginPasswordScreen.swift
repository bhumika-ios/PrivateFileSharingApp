//
//  LoginPasswordScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct LoginPasswordScreen: View {
    var body: some View {
        VStack{
            LoginPassword()
        }
    }
}

struct LoginPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginPasswordScreen()
    }
}

struct LoginPassword: View {
    @ObservedObject var fieldVM = FieldViewModel()
    @State var isLinkActive = false
    @State private var wrongPassword = 0
    @State var isShowingHome = false
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    //MARK:- Text add and set font size
                    TxtHeadingComponent(title: "Are You XXX?")
                    
                    TxtTagComponent(subTitle: "Confirm you by your password")
                    
                }
                .padding(.vertical,80)
                VStack(alignment: .leading){
                    TextFieldComponent(placeHolder: "Password", field: $fieldVM.password, isSecure: true)
                    if !fieldVM.password.isEmpty{
                        TxtErrorComponent(error: fieldVM.passwordPrompt)
                    }
                }
                .padding()
                .padding(.vertical,-40)
                
                VStack{
                    BtnBorderComponent(action: {
                       // self.fieldVM.passwordConfirm()
                        authenticatePass(pass: fieldVM.password)
                    }) {
                        Text("Log In ")
                    }
                    .opacity(fieldVM.isPasswordConfirmCompleted ? 1 : 0.6)
                    .disabled(!fieldVM.isPasswordConfirmCompleted)
                    .padding(.vertical,20)
                }
                .navigationDestination(isPresented: $isShowingHome){
                   MainFileListView()
                }
            .padding()
            
                VStack{
                    HStack{
                        Text("Forgotten your password?")
//                        NavigationLink(destination: ForgottenScreen(), isActive: $isLinkActive){
                            BtnTextComponent(action: {
                                //  ForgottenScreen()
                                self.isLinkActive = true
                            }){
                                
                                
                                Text("Reset Password.")
                                    .foregroundColor(.green)
                            }
//                        }
                    }
                    .navigationDestination(isPresented: $isLinkActive){
                        ForgottenScreen()
                    }
                }
                
            }
          
        }
        .navigationBarBackButtonHidden(true)
    }
    func authenticatePass(pass: String) {
        if pass == "Bhumi@123" {
            wrongPassword = 0
            isShowingHome = true
//            if password.lowercased() == "abc123" {
//                wrongPassword = 0
//                showingLoginScreen = true
////            } else {
//                wrongPassword = 2
//            }
            }else {
                wrongPassword = 2
                print("wrong pass")
        }
    }
}

