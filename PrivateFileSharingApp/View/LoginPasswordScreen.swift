//
//  LoginPasswordScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct LoginPasswordScreen: View {
    @ObservedObject var fieldVM = FieldViewModel()
    @State var isLinkActive = false
   
    var body: some View {
        NavigationView{
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
                        self.fieldVM.passwordConfirm()
                    }) {
                        Text("Log In ")
                    }
                    .opacity(fieldVM.isPasswordConfirmCompleted ? 1 : 0.6)
                    .disabled(!fieldVM.isPasswordConfirmCompleted)
                    .padding(.vertical,20)
                }
                .padding()
                VStack{
                    HStack{
                        Text("Forgotten your password?")
                        NavigationLink(destination: ForgottenScreen(), isActive: $isLinkActive){
                            BtnTextComponent(action: {
                                //  ForgottenScreen()
                                self.isLinkActive = true
                            }){
                                
                                
                                Text("Reset Password.")
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

struct LoginPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginPasswordScreen()
    }
}
