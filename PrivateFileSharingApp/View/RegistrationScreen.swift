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
        VStack{
            VStack{
                
               TxtHeadingComponent(title: "Create New Account")
               
               TxtTagComponent(subTitle: "Please fill registration to create account")
                   
            }
            .padding(.vertical,60)
            VStack(alignment:.leading){
                TxtTagComponent(subTitle: "Email")
                TextFieldComponent(placeHolder: "Email Address", field: $fieldVM.email)
                TxtTagComponent(subTitle: "Full Name")
                TextFieldComponent(placeHolder: "Full Name", field: $fieldVM.fullName)
                TxtTagComponent(subTitle: "Create Password")
                TextFieldComponent(placeHolder: "Password", field: $fieldVM.password, isSecure: true)
                TxtTagComponent(subTitle: "Confirm Password")
                TextFieldComponent(placeHolder: "Confirm Password", field: $fieldVM.conPassword, isSecure: true)
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
                BtnBorderComponent(action: {}) {
                    Text("Next Step ")
                }
                .padding(.vertical,20)
            }
           
           
               
        }
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen()
    }
}
