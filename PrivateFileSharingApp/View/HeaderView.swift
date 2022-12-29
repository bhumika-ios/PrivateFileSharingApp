//
//  HeaderView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct HeaderView: View {
    @State var showingBottomSheet = false
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                TxtHeadingComponent(title: "My Files")
                Spacer()
                Button(action: {
                    showingBottomSheet.toggle()
                }){
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 25,height: 13)
                }
            }
            .padding()
            .sheet(isPresented: $showingBottomSheet){
                ProfileSheet()
                    .presentationDetents([.medium,.medium])
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
