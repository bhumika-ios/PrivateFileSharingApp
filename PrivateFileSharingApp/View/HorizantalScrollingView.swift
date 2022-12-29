//
//  HorizantalScrollingView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct HorizantalScrollingView: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal){
                HStack(spacing: 10){
                    BtnScrollComponent(action: {
                        
                    }){
                       
                        HStack{
                           
                            Image(systemName: "menucard.fill")
                            Text("My Files")
                        }
                    }
                    BtnScrollComponent(action: {
                        
                    }){
                        HStack{
                            Image(systemName: "icloud.and.arrow.up")
                            Text("Upload/Create")
                        }
                    }
                    BtnScrollComponent(action: {
                        
                    }){
                       
                        HStack{
                            Image(systemName: "checkmark.square")
                            Text("Select")
                        }
                    }
                    BtnScrollComponent(action: {
                        
                    }){
                       
                        HStack{
                            Image(systemName: "slider.horizontal.below.square.fill.and.square")
                           
                            Text("View")
                        }
                    }
                   
                }
            }
        }
    }
}

struct HorizantalScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        HorizantalScrollingView()
    }
}
struct BtnScrollComponent<WhateverYourWant: View>: View {
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
                }
                    .frame(maxWidth: .infinity, maxHeight: 25)
                    .padding()
                   
                    .background(Color("Gray"))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                   
                    .foregroundColor(.black)
                    .font(.custom("Genos-Medium", size: 20))
                   
            }
        }
      
    }
}

