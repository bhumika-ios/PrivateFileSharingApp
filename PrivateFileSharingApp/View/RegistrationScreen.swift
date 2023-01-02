//
//  RegistrationScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct RegistrationScreen: View {
    @ObservedObject var fieldVM = FieldViewModel()
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    
                    TxtHeadingComponent(title: "Create New Account")
                    
                    TxtTagComponent(subTitle: "Please fill registration to create account")
                    
                }
                .padding(.vertical,60)
                Group{
                    VStack(alignment:.leading){
                        TxtTagComponent(subTitle: "Email")
                        TextFieldComponent(
                            placeHolder: "Email Address",
                            field: $fieldVM.email
                        )
                        if !fieldVM.email.isEmpty{
                            TxtErrorComponent(error: fieldVM.emailPrompt)
                        }
                        TxtTagComponent(subTitle: "Full Name")
                        TextFieldComponent(placeHolder: "Full Name", field: $fieldVM.fullName)
                        if !fieldVM.fullName.isEmpty{
                            TxtErrorComponent(error: fieldVM.namePrompt)
                        }
                        TxtTagComponent(subTitle: "Create Password")
                        TextFieldComponent(placeHolder: "Password", field:$fieldVM.password, isSecure: true)
                        if !fieldVM.password.isEmpty{
                            TxtErrorComponent(error:fieldVM.passwordPrompt)
                        }
                        //TxtTagComponent(subTitle: "Confirm Password")
                        //TextFieldComponent(placeHolder: "Confirm Password", field: $conPassObj.conPassword, isSecure: true)
                        //TxtErrorComponent(error: conPassObj.error)
                        
                    }
                    .padding()
                }
                VStack(alignment:.leading){
                    TxtTagComponent(subTitle: "Confirm Password")
                    TextFieldComponent(
                        placeHolder: "Confirm Password",
                        field: $fieldVM.conPassword,
                        isSecure: true)
                    if !fieldVM.conPassword.isEmpty{
                        TxtErrorComponent(error: fieldVM.confirmPwPrompt)
                    }
                }
                
                .padding()
                .padding(.vertical,-30)
                //.padding()
                VStack{
                    Text("By clicking on 'Create Account' button I aggree ")
                    HStack{
                        Text("to the")
                        BtnTextComponent(action: {}){
                            Text("Terms of Service")
                                .foregroundColor(.green)
                        }
                        Text("and")
                        BtnTextComponent(action: {}){
                            Text("Privacy Policy")
                                .foregroundColor(.green)
                            
                        }
                    }
                }
                .padding(.vertical,10)
                VStack{
                                    BtnBorderComponent(action: {
                                        self.fieldVM.confirm()
                                    }) {
                                        Text("Next Step ")
                                    }
                                    .opacity(fieldVM.isConfirmCompleted ? 1 : 0.6)
                                    .disabled(!fieldVM.isConfirmCompleted)
                                    .padding(.vertical,20)
                }
                
                
                
            }
        }
        //.navigationBarBackButtonHidden(true)
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen()
    }
}
