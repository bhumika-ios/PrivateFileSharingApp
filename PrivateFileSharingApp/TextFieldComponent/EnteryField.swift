//
//  EnteryField.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 21/12/22.
//

import SwiftUI

struct EnteryField: View {
    var placeHolder: String
    @Binding var field: String
    var isSecure: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                if isSecure{
                    SecureField(placeHolder, text: $field).autocapitalization(.none)
                } else {
                    TextField(placeHolder, text: $field).autocapitalization(.none)
                }
            }
            .padding(8)
        }
    }
}

//struct EnteryField_Previews: PreviewProvider {
//    static var previews: some View {
//        EnteryField()
//    }
//}
