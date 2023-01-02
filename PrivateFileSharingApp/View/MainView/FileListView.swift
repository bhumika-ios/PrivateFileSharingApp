//
//  FileListView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 28/12/22.
//

import SwiftUI

struct FileListView: View {
   
    var fileList: [FileModel] = FileList.list
    let imageName: String
    let title: String
    let uploadingDate: String
    var body: some View {

        NavigationStack{
            HStack(spacing: 16){
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .cornerRadius(4)
                VStack(alignment: .leading, spacing: 4){
                    TxtTagComponent(subTitle: title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    Text(uploadingDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image("3Dots")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60,height: 30)
                //.padding()
            }
        }
    }
}

struct FileListView_Previews: PreviewProvider {
    static var previews: some View {
        FileListView(imageName: "camera", title: "vfcxvgd", uploadingDate: "Feb 02, 2022")
    }
}
