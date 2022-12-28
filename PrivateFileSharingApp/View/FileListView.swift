//
//  FileListView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 28/12/22.
//

import SwiftUI

struct FileListView: View {
    var body: some View {
        NavigationView{
            List(0 ..< 20){ item in
                HStack{
                    Image(systemName: "camera")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .cornerRadius(4)
                    VStack(alignment: .leading, spacing: 2){
                        Text("fgbfgbdfgdfgb")
                            .font(.custom("Genos-Regular", size: 24))
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        Text("january 1, 2022")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                }
                .padding()
            }
           
            .navigationTitle("Files")
        }
       
    }
}

struct FileListView_Previews: PreviewProvider {
    static var previews: some View {
        FileListView()
    }
}
