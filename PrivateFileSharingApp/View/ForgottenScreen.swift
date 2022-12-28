//
//  ForgottenScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct ForgottenScreen: View {
    @ObservedObject var fieldVM = FieldViewModel()
    @State var isLinkActive = false
   
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    //MARK:- Text add and set font size
                    TxtHeadingComponent(title: "Forgotten Password?")
                    
                    TxtTagComponent(subTitle: "Get reset link with your email")
                    
                }
                .padding(.vertical,80)
                VStack(alignment: .leading){
                    TextFieldComponent(placeHolder: "Type your E-mail", field: $fieldVM.email)
                    if !fieldVM.email.isEmpty{
                        TxtErrorComponent(error: fieldVM.emailPrompt)
                    }
                }
                .padding()
                .padding(.vertical,-40)
                
                VStack{
                    BtnBorderComponent(action: {
                        self.fieldVM.emailConfirm()
                    }) {
                        Text("Get Link ")
                    }
                    .opacity(fieldVM.isEmailConfirmCompleted ? 1 : 0.6)
                    .disabled(!fieldVM.isEmailConfirmCompleted)
                    .padding(.vertical,20)
                }
                .padding()
                VStack{
                    HStack{
                        Text("Remember your password?")
                        NavigationLink(destination: LoginScreen(), isActive: $isLinkActive){
                            BtnTextComponent(action: {
                                self.isLinkActive = true
                            }){
                                Text("Log In")
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

struct ForgottenScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgottenScreen()
    }
}
