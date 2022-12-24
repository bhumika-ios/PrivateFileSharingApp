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
               TextFirstTitleComponent(title: "Welcome Back!")
               
               TextSubTitleComponent(subTitle: "Please type your email to log in")
                   
            }
            .padding(.vertical,80)
            VStack{
                TextFieldComponent(placeHolder: "Email Address", field: $fieldVM.email)
            }
            .padding()
            .padding(.vertical,-42)
            VStack{
                Button(action: {
                    
                    
                }) {
                    HStack{
                        Text("Next Step ")
                            .foregroundColor(.black)
                            .font(.system(size: 18).bold())
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .frame(width: 12, height: 15)
                            .foregroundColor(.green)
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                        //  .background(Capsule().fill(Color.blue))
                    }
                    .frame(width:360 ,height:60)
                    
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(4), lineWidth: 2))
                    .fixedSize(horizontal: false, vertical: true)
                }
            }
                .padding(.vertical,45)
                Button(action: {
                    
                })
                {
                    HStack{
                        Text("Don't have an account?")
                            .foregroundColor(.black)
                        
                        Text("Register")
                            .foregroundColor(.green)
                    }
                    .font(.system(size: 16))
                
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
