//
//  TextFirstTitleComponent.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 24/12/22.
//

import SwiftUI

struct TextFirstTitleComponent: View {
    var title: String
    var body: some View {
        VStack{
            Text(title)
        }
        .font(.custom("Genos-Medium", size: 32))
        .padding(.vertical,-2)
    }
}

struct TextEditorComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextFirstTitleComponent(title: "first")
    }
}
