//
//  MainFileListView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct MainFileListView: View {
   
    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .leading){
                    HeaderView()
                       // .padding()
                    HorizantalScrollingView()
             
                    //FileListView()
                   // FileGridView()
                }
               //ProfileSheet()
              //  .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct MainFileListView_Previews: PreviewProvider {
    static var previews: some View {
        MainFileListView()
    }
}
