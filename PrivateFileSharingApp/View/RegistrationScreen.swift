//
//  RegistrationScreen.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct RegistrationScreen: View {
    @ObservedObject var fieldVM = FieldViewModel()
    @State var visible = false
    @State var reVisible = false
    @State var showAlert = false
    @State var isLinkActive = false
   
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                VStack{
                    Image("PrivateLogo")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.green)
                    TxtHeadingComponent(title: "Create New Account")
                    
                    TxtTagComponent(subTitle: "Please fill registration to create account")
                    
                }
                .padding(.vertical,5)
                Group{
                    VStack(alignment:.leading){
                        TxtTagComponent(subTitle: "Email")
                            .padding(.vertical,1)
                        TextFieldComponent(
                            placeHolder: "Email Address",
                            field: $fieldVM.email
                        )
                        if !fieldVM.email.isEmpty{
                            TxtErrorComponent(error: fieldVM.emailPrompt)
                        }
                        TxtTagComponent(subTitle: "Full Name")
                            .padding(.vertical,1)
                        TextFieldComponent(placeHolder: "Full Name", field: $fieldVM.fullName)
                        if !fieldVM.fullName.isEmpty{
                            TxtErrorComponent(error: fieldVM.namePrompt)
                        }
                        TxtTagComponent(subTitle: "Create Password")
                            .padding(.vertical,1)
                        TxtSecureComponent(placeHolder: "Password", field:$fieldVM.password, isSecure: true)
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
                        .padding(.vertical,1)
                    TxtSecureComponent(
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
                .padding(.vertical,25)
                //.padding(.vertical,10)
                VStack{
                                    BtnBorderComponent(action: {
                                        self.fieldVM.confirm()
                                            showAlert = true
                                        
                                        
                                    }) {
                                        Text("Next Step ")
                                    }
                                    .opacity(fieldVM.isConfirmCompleted ? 1 : 0.6)
                                    .disabled(!fieldVM.isConfirmCompleted)
                                    .padding(.vertical,20)
                    
                                    .alert(isPresented: $showAlert, content: {
                                        Alert(title: Text("Successfully Registration"), dismissButton: .default(Text("Ok"), action: {
                                            self.isLinkActive = true
                                        }))
                                    })
                                    .navigationDestination(isPresented: $isLinkActive){
                                        LoginScreen()
                                    }
//                    if showAlert{
//                        CustomAlert(show: $showAlert)
//                    }
                }
                .padding(.vertical,-25)
                
                
                
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
struct CustomAlert : View{
    @Binding var show : Bool
    @State var isLinkActive = false
    var body: some View{
        //NavigationView{
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)){
                VStack(spacing: 25){
                    Text("Successfully Registration")
                        .foregroundColor(.green)
                    Divider()
                    Button(action: {
                        self.isLinkActive = true
                    }){
                        
                        Text("Back To LogIn")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding(.vertical,-5)
                            .padding(.horizontal,20)
                    }
                    .navigationDestination(isPresented: $isLinkActive){
                        LoginScreen()
                    }
                }
                .padding(.vertical, 25)
                .padding(.horizontal,30)
                
                .background(.white)
                .cornerRadius(25)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(4), lineWidth: 2))
                //.fixedSize(horizontal: false, vertical: true)
            }
            .padding()
            .offset(y:-450)
      //  }
    }
}
