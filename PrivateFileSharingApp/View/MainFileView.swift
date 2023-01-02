//
//  MainFileListView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct MainFileView: View {
   
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

struct MainFileView_Previews: PreviewProvider {
    static var previews: some View {
        MainFileView()
    }
}
