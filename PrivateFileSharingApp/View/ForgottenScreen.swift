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
    @EnvironmentObject var setting: AuthUser
    @State var showAlert = false
   
    var body: some View {
        NavigationStack{
//            if setting.isLogIn{
//                ConnectionView().environmentObject(setting)
//            }else{
            VStack{
                VStack{
                    Image("PrivateLogo")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.green)
                    //MARK:- Text add and set font size
                    TxtHeadingComponent(title: "Forgotten Password?")
                    
                    TxtTagComponent(subTitle: "Get reset link with your email")
                    
                }
                .padding(.vertical,80)
                VStack(alignment: .leading){
                    TxtTagComponent(subTitle: "Email")
                        .padding(.vertical,1)
                    TextFieldComponent(placeHolder: "Type your E-mail", field: $fieldVM.email)
                    if !fieldVM.email.isEmpty{
                        TxtErrorComponent(error: fieldVM.emailPrompt)
                    }
                }
                .padding()
                .padding(.vertical,-40)
                
                VStack{
                    BtnBorderComponent(action: {
                        //self.fieldVM.emailConfirm()
                        showAlert = true
                    }) {
                        Text("Get Link ")
                    }
                    .opacity(fieldVM.isEmailConfirmCompleted ? 1 : 0.6)
                    .disabled(!fieldVM.isEmailConfirmCompleted)
                    .padding(.vertical,20)
                    .alert(isPresented: $showAlert, content: {
//                        Alert(title: Text("Please check your EmailId"), primaryButton: .default(Text("Ok"), action: {
//                            setting.isLoggin = false
//                        }), secondaryButton: .cancel(Text("Ok")))
                        Alert(title: Text("Please check your EmailId"), dismissButton: .default(Text("Ok"), action: {
                            setting.isLoggin = false
                        }))
                    })
                    .navigationDestination(isPresented: $setting.isLoggin){
                        LoginScreen().environmentObject(setting)
                    }
                
                }
                
                    .padding()
                    VStack{
                        HStack{
                            Text("Remember your password?")
                            
                            BtnTextComponent(action: {
                                setting.isLoggin = false
                            }){
                                Text("Log In")
                                    .foregroundColor(.green)
                            }
                            
                            
                        }
//                        .navigationDestination(isPresented: $isLinkActive){
//                            LoginScreen()
//                                .environmentObject(setting)
//                        }
                   // }
                }
            }
        }
       .navigationBarBackButtonHidden(true)
        .tint(.black)
    }
}

struct ForgottenScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgottenScreen()
    }
}
