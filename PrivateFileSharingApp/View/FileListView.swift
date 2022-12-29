//
//  FileListView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 28/12/22.
//

import SwiftUI

struct FileListView: View {
    
    var fileList: [FileModel] = FileList.list
    var body: some View {
        NavigationView{
            
            ZStack{
              
                VStack{
                    List(fileList, id: \.id){ fileList in
                        HStack{
                            Image(fileList.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                                .cornerRadius(4)
                            VStack(alignment: .leading, spacing: 2){
                                Text(fileList.title)
                                    .font(.custom("Genos-Regular", size: 24))
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                Text(fileList.uploadingDate)
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
                    .listStyle(.inset)
                }
                //  .navigationTitle("My Files")
               
            }
           
        }
       
    }
}

struct FileListView_Previews: PreviewProvider {
    static var previews: some View {
        FileListView()
    }
}
