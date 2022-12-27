//
//  ValidationManager.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import Foundation
import SwiftUI

class EmailValidationobj: ObservableObject{
    @Published var email = ""{
        didSet{
            if self.email.isEmpty{
                self.error = "Required"
            } else if !self.email.isEmailValid(){
                self.error = "Invalid Email"
            }else{
                self.error = ""
            }
                        
        }
    }
    @Published var error = ""
}

class PasswordValidationobj: ObservableObject {
    @Published var password = "" {
        didSet{
            self.isValidPassword()
        }
    }
    @Published var error = ""
    private func isValidPassword(){
      
        let setPassError = self.password.isPasswordValid() == false
        
        if setPassError{
//            if self.password.isEmpty{
//                self.error = "Required"
//                return
//            }
            if self.password.count < 6 {
                self.error = "Must be at least 6 characters."
                return
            }
            if !self.password.isUpperCase(){
                self.error = "Must be at least 1 Uppercase characters."
                return
            }
            if !self.password.isLowerCase(){
                self.error = "Must be at least 1 Lowercase characters."
                return
            }
            if !self.password.containsCharacter(){
                self.error = "Must be at least 1 Special characters."
                return
            }
            if !self.password.containsDigit(){
                self.error = "Must be at least 1 Digit."
                return
            }else {
                self.error = ""
            }
        }
    }
}
class NameValidationobj: ObservableObject{
    @Published var fullName = ""{
        didSet{
            if self.fullName.isEmpty{
                self.error = "Required"
            } else if !self.fullName.isNameValid(){
                self.error = "Invalid Name"
            }else{
                self.error = ""
            }
                        
        }
    }
    @Published var error = ""
}

//class ConPasswordValidationobj: ObservableObject{
//    @Published var password = ""
//    @Published var conPassword = "" {
//        didSet {
//            self.isValidConPassword()
//        }
//    }
//    @Published var error = ""
//    private func isValidConPassword(){
//        if self.conPassword.isEmpty {
//            self.error = "Required"
//        }else if !self.passwordsMatch(){
//            self.error = "Enter Same Password"
//        }else{
//            self.error = ""
//        }
//            
//    }
//    func passwordsMatch() -> Bool {
//          password == conPassword
//    }
//}
//
//
