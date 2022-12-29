//
//  HeaderView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                TxtHeadingComponent(title: "My Files")
                Spacer()
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 25,height: 13)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
