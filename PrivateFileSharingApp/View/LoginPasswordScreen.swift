//
//  LoginPasswordScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct LoginPasswordScreen: View {
    @ObservedObject var fieldVM = FieldViewModel()
   
    var body: some View {
       
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
                    BtnBorderComponent(action: {}) {
                        Text("Log In ")
                    }
                    .padding(.vertical,20)
                }
                .padding()
                VStack{
                    BtnTextComponent(action: {
                      //  ForgottenScreen()
                    }){
                        HStack{
                            Text("Forgotten your password?")
                            Text("Reset Password.")
                                .foregroundColor(.green)
                        }
                    }
                }
                   
            }
    }
}

struct LoginPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginPasswordScreen()
    }
}
