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
    @State var visible = false
    @State var reVisible = false
    var isSecure: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                    TextField(placeHolder, text: $field).autocapitalization(.none)

            
            }
            .padding(8)
            .font(.custom("Genos-Regular", size: 18))
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
struct TxtSecureComponent: View {
    var placeHolder: String
    @Binding var field: String
    @State var visible = false
    @State var reVisible = false
    var isSecure: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            HStack{
             
                    if self.visible{
                        TextField(placeHolder, text: $field).autocapitalization(.none)
                    }else{
                        SecureField(placeHolder, text: $field).autocapitalization(.none)
                    }
                   
               
                   
                Button(action: {
                    self.visible.toggle()
                }) {
                    Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(.black)
                }
            }
            .padding(8)
            .font(.custom("Genos-Regular", size: 18))
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
struct TxtHeadingComponent: View {
    var title: String
    var body: some View {
        VStack{
            Text(title)
        }
        .font(.custom("Genos-Medium", size: 34))
        .padding(.vertical,-2)
    }
}
struct TxtTagComponent: View {
    var subTitle: String
    var body: some View {
        VStack(alignment: .leading){
            Text(subTitle)
                .font(.custom("Genos-Regular", size: 22))
        }
    }
      
}
struct TxtErrorComponent: View {
    var error: String
    var body: some View {
        VStack{
            Text(error)
                .foregroundColor(.red)
                .font(.system(size: 13))
        }
    }
      
}
