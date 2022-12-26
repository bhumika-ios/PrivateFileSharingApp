//
//  Rules.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//
import Foundation
import SwiftUI
extension String{
    // MARK: - Validation Functions
//    func passwordsMatch() -> Bool {
//        password == confirmPw
//    }
    
    func isPasswordValid() -> Bool {
        // criteria in regex.  See http://regexlib.com
        let passwordTest = NSPredicate(format: "SELF MATCHES %@",
                                       "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$")
        return passwordTest.evaluate(with: self)
    }
    func isUpperCase() -> Bool {
        let upperRegEx = ".*[A-Z]+.*"
        let upperValidation  = NSPredicate(format: "SELF MATCHES[c] %@", upperRegEx)
        return upperValidation.evaluate(with: self)
    }
    
    func isLowerCase() -> Bool {
        let lowerRegEx = ".*[a-z]+.*"
        let lowerValidation  = NSPredicate(format: "SELF MATCHES[c] %@", lowerRegEx)
        return lowerValidation.evaluate(with: self)
    }
    
    func containsCharacter() -> Bool {
        let containsCharacterRegEx = ".*[!@#$%^&*()\\-_=+{}|?>.<]+.*"
        let containsCharacterValidation  = NSPredicate(format: "SELF MATCHES[c] %@", containsCharacterRegEx)
        return containsCharacterValidation.evaluate(with: self)
    }
    
    func containsDigit() -> Bool {
        let containsDigitRegEx = ".*[0-9]+.*"
        let containsDigitValidation  = NSPredicate(format: "SELF MATCHES[c] %@", containsDigitRegEx)
        return containsDigitValidation.evaluate(with: self)
    }
    func isNameValid() -> Bool{
        let reqularExpression = "^[a-zA-Z-]+ ?.* [a-zA-Z-]+$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        return predicate.evaluate(with: self)
    }
    
    func isEmailValid() -> Bool {
        // criteria in regex.  See http://regexlib.com
        let emailTest = NSPredicate(format: "SELF MATCHES %@",
                                    "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$")
        return emailTest.evaluate(with: self)
    }
    func invalidPhoneNumber() -> Bool
    {
       let phoneRegex = NSPredicate(format: "SELF MATCHES %@", ".*[0-9]+.*")
        return phoneRegex.evaluate(with: self)
    }
   
//    var isConfirmComplete: Bool {
//        if !passwordsMatch() ||
//        !isPasswordValid() ||
//        !isEmailValid() ||
//            !isValidAge() {
//            return false
//        }
//        return true
//    }
    
}

//enum RegexPatterns {
//    static let emailChars = ".*[@].*"
//    static let higherThanSixChars = "^.{6,}$"
//    static let name = "^[a-zA-Z]+(([',.-][a-zA-Z])?[a-zA-Z]*)*$"
//}

