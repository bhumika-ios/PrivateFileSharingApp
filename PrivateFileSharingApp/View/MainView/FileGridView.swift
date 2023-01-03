//
//  FileGridView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct FileGridView: View {
    var fileList: [FileModel] = FileList.list
    @State var showingBottomSheet = false
    let imageName: String
    let title: String
    let uploadingDate: String
    var body: some View {

        NavigationStack{
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 80)
                    .cornerRadius(4)
                TxtTagComponent(subTitle: title)
                    .font(.custom("Genos-Regular", size: 24))
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text(uploadingDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Button{
                    showingBottomSheet.toggle()
    
            } label: {
                Image(systemName: "ellipsis")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.green)
                    .frame(width: 20,height: 30)
            }
            .sheet(isPresented: $showingBottomSheet){
                MenuSheet()
                    .presentationDetents([.height(560),.height(560)])
            }
               
            }
        }
    }
}

struct FileGridView_Previews: PreviewProvider {
    static var previews: some View {
        FileGridView(imageName: "camera", title: "bgvchg", uploadingDate: "feb 02, 2022")
    }
}
