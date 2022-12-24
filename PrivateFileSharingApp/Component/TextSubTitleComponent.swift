//
//  TextSubTitleComponent.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 24/12/22.
//

import SwiftUI

struct TextSubTitleComponent: View {
    var subTitle: String
    var body: some View {
       Text(subTitle)
            .font(.custom("Genos-Regular", size: 22))
    }
      
}

struct TextSubTitleComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextSubTitleComponent(subTitle: "SubTitle")
    }
}
