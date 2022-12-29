//
//  MainFileListView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct MainFileListView: View {
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading){
                    HeaderView()
                        .padding()
                    HorizantalScrollingView()
                    FileListView()
                }
              //  .padding()
            }
        }
    }
}

struct MainFileListView_Previews: PreviewProvider {
    static var previews: some View {
        MainFileListView()
    }
}
