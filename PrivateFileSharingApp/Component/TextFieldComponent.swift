//
//  EnteryField.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 21/12/22.
//

import SwiftUI

struct TextFieldComponent: View {
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
            .font(.custom("Genos-Regular", size: 24))
            .frame(height:60)
            //.background(Color("Gray"))
            
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("Gray"))
            )
            
            .fixedSize(horizontal: false, vertical: true)
           // .font()
        }
    }
}

//struct EnteryField_Previews: PreviewProvider {
//    static var previews: some View {
//        EnteryField()
//    }
//}
