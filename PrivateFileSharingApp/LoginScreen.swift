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
            
//MARK:- Text add and set font size
            Text("Welcome Back!")
                .font(.system(size: 32).bold())
            Text("Please type your email to log in")
                .font(.system(size: 22))
            VStack{
                VStack{
                    TextFieldComponent(placeHolder: "Email Address", field: $fieldVM.email)
                }
                .padding()
                Button(action: {
                    
                    
                }) {
                    HStack{
                        Text("Next Step ")
                            .foregroundColor(.black)
                            .font(.system(size: 28))
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .frame(width: 15, height: 20)
                            .foregroundColor(.green)
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                        //  .background(Capsule().fill(Color.blue))
                    }
                    .frame(width:360 ,height:70)
                    .backgroundStyle(Color(UIColor.secondarySystemBackground))
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(1), lineWidth: 1))
                    .fixedSize(horizontal: false, vertical: true)
                }
                .padding()
                Button(action: {
                    
                })
                {
                    HStack{
                        Text("")
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
