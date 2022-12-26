//
//  ForgottenScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct ForgottenScreen: View {
    @ObservedObject var fieldVM = FieldViewModel()
    @ObservedObject var emailObj = EmailValidationobj()
    var body: some View {
        VStack{
            VStack{
                //MARK:- Text add and set font size
               TxtHeadingComponent(title: "Forgotten Password?")
               
               TxtTagComponent(subTitle: "Get reset link with your email")
                   
            }
            .padding(.vertical,80)
            VStack(alignment: .leading){
                TextFieldComponent(placeHolder: "Type your E-mail", field: $emailObj.email)
                Text(emailObj.error).foregroundColor(.red).font(.system(size: 13))
            }
            .padding()
            .padding(.vertical,-40)
            
            VStack{
                BtnBorderComponent(action: {}) {
                    Text("Get Link ")
                }
                .padding(.vertical,20)
            }
            .padding()
            VStack{
                BtnTextComponent(action: {}){
                    HStack{
                        Text("Remember your password?")
                        Text("Log In")
                            .foregroundColor(.green)
                    }
                }
            }
               
        }
    }
}

struct ForgottenScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgottenScreen()
    }
}
