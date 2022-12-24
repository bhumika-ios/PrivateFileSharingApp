//
//  LoginScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 21/12/22.
//

import SwiftUI

struct LoginScreen: View {
    @ObservedObject var fieldVM = FieldViewModel()
    var body: some View {
        VStack{
            VStack{
                //MARK:- Text add and set font size
               TxtHeadingComponent(title: "Welcome Back!")
               
               TxtTagComponent(subTitle: "Please type your email to log in")
                   
            }
            .padding(.vertical,80)
            VStack{
                TextFieldComponent(placeHolder: "Email Address", field: $fieldVM.email)
            }
            .padding()
            .padding(.vertical,-40)
            
            VStack{
                BtnBorderComponent(action: {}) {
                    Text("Next Step ")
                }
                .padding(.vertical,20)
            }
            .padding()
            VStack{
                BtnTextComponent(action: {}){
                    HStack{
                        Text("Don't have an account?")
                        Text("Register")
                            .foregroundColor(.green)
                    }
                }
            }
               
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
