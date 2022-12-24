//
//  BtnComponent.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 24/12/22.
//

import SwiftUI

struct BtnComponent<WhateverYourWant: View>: View {
    let action: () -> Void
    let content: WhateverYourWant
    
    init(action: @escaping () -> Void, @ViewBuilder content: () -> WhateverYourWant) {
        self.action = action
        self.content = content()
    }
    var body: some View {
        VStack{
           
                Button(action: action){
                    HStack{
                        content
                            .font(.custom("Genos-Medium", size: 24))
                            .foregroundColor(.black)
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .frame(width: 12, height: 15)
                            .foregroundColor(.green)
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                    
                }
                    .frame(width:360 ,height:60)
                    
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(4), lineWidth: 2))
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
      
    }
}

//struct BtnComponent_Previews: PreviewProvider {
//    static var previews: some View {
//        BtnComponent<<#WhateverYourWant: View#>>()
//    }
//}
