//
//  FileGridView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct FileGridView: View {
    var fileList: [FileModel] = FileList.list
    let layout = [GridItem(.flexible()),
                  GridItem(.flexible()),
                  GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
            LazyVGrid(columns: layout, spacing: 30){
                ForEach(fileList, id: \.id) { fileList in
                    VStack{
                        Image(fileList.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500,height: 80)
                            .cornerRadius(4)
                        Text(fileList.title)
                            .font(.custom("Genos-Regular", size: 24))
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        Text(fileList.uploadingDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Image("Horizantal3Dots")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 30)
                    }
                    }
                }
                
            }
        }
    }
}

struct FileGridView_Previews: PreviewProvider {
    static var previews: some View {
        FileGridView()
    }
}
