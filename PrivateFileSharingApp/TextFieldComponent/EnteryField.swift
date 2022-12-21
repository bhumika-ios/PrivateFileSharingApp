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
            .frame(height:50)
            .backgroundStyle(Color(UIColor.secondarySystemBackground))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
            .fixedSize(horizontal: false, vertical: true)
            .font(.caption)
        }
    }
}

//struct EnteryField_Previews: PreviewProvider {
//    static var previews: some View {
//        EnteryField()
//    }
//}
