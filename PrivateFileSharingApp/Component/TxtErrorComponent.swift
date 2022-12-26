//
//  TxtErrorComponent.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

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

struct TxtErrorComponent_Previews: PreviewProvider {
    static var previews: some View {
        TxtErrorComponent(error: "error")
    }
}
