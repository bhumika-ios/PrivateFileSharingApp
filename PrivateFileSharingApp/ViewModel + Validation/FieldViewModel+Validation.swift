//
//  FieldViewModel+Validation.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 28/12/22.
//

import Foundation
class FieldViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    @Published var conPassword = ""
    @Published var isLoggin: Bool = false
    @Published var isCorrect : Bool = true
    
    
    // MARK: - Validation Functions
    func passwordsMatch() -> Bool {
        password == conPassword
    }

    func isPasswordValid() -> Bool {
        // criteria in regex.  See http://regexlib.com
        let passwordTest = NSPredicate(format: "SELF MATCHES %@",
                                       "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$")
        return passwordTest.evaluate(with: password)
    }
    func isNameValid() -> Bool{
        let reqularExpression = "^[a-zA-Z-]+ ?.* [a-zA-Z-]+$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        return predicate.evaluate(with: fullName)
    }

    func isEmailValid() -> Bool {
        // criteria in regex.  See http://regexlib.com
        let emailTest = NSPredicate(format: "SELF MATCHES %@",
                                    "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$")
        return emailTest.evaluate(with: email)
    }
    var isEmailConfirmCompleted: Bool {
        if !isEmailValid() {
            return false
        }
        return true
    }
    var isPasswordConfirmCompleted: Bool {
        if !isPasswordValid(){
            return false
        }
        return true
    }
    var isConfirmCompleted: Bool {
        if !passwordsMatch() ||
        !isPasswordValid() ||
        !isNameValid() ||
            !isEmailValid() {
            return false
        }
        return true
    }
    
    // MARK: - Validation Prompt Strings
    
    var confirmPwPrompt: String {
        if passwordsMatch() {
            return ""
        } else {
            return "Password fields do not match"
        }
    }
    
    var emailPrompt: String {
        if isEmailValid(){
            return ""
        } else {
            return "Enter a valid email address"
        }
    }
    var namePrompt: String {
        if isNameValid(){
            return ""
        } else {
            return "Enter valid Name"
        }
    }
    
    var passwordPrompt: String {
        if isPasswordValid() {
            return ""
        } else {
            return "Must be between 8 and 15 characters containing at least one number and one capital letter"
                
        }
    }
    func emailConfirm() {
        // perform signup functions then clear fields
        email = ""
        
    }
    func passwordConfirm() {
        // perform signup functions then clear fields
        password = ""
        
    }
    func confirm() {
        // perform signup functions then clear fields
        email = ""
        password = ""
        conPassword = ""
        fullName = ""
    }

}


