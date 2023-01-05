//
//  ConnectionView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 05/01/23.
//

import SwiftUI

struct ConnectionView: View {
    @EnvironmentObject var setting: AuthUser
    var body: some View {
        VStack{
            if setting.isLoggin{
                LoginPassword().environmentObject(setting)
            }else{
                if UserDefaults.standard.bool(forKey: "login") == true{
                    MainFileView()
                        .environmentObject(setting)
                }else{
                    LoginScreen().environmentObject(setting)
                }
            }
        }
    }
}

struct ConnectionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionView()
    }
}
