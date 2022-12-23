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
            Text("Welcome Back!")
                .font(.system(size: 32).bold())
            Text("Please type your email to log in")
                .font(.system(size: 22))
                
            VStack{
                TextFieldComponent(placeHolder: "Email Address", field: $fieldVM.email)
            }
            .padding()
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
