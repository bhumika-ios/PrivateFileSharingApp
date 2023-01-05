//
//  AuthUser.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 31/12/22.
//

import Foundation

class AuthUser: ObservableObject{
    @Published var isLoggin: Bool = false{
        didSet{
            UserDefaults.standard.set(isLoggin,forKey: "login")
        }
      }
    @Published var isLogginPass: Bool = false{
        didSet{
            UserDefaults.standard.set(isLogginPass,forKey: "loginPass")
        }
    }
    @Published var isLogIn: Bool = false{
        didSet{
            UserDefaults.standard.set(isLogginPass,forKey: "loginnn")
        }
    }
    init(){
        self.isLoggin = false
        self.isLogginPass = false
        self.isLogIn = false
    }
//    @Published var isCorrect : Bool = true
}
