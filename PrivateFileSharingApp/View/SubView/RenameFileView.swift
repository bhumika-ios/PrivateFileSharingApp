//
//  RenameFileView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 03/01/23.
//

import SwiftUI

struct RenameFileView: View {
    @ObservedObject var fieldVM = FieldViewModel()
   // @Binding var show : Bool
    var body: some View {
            VStack(alignment:.leading){
                HStack{
                    Image(systemName: "pencil")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.green)
                    TxtHeadingComponent(title: "Rename Your Folder")
                   
                }
                HStack{
                    Image(systemName: "folder.fill")
                    
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                        .padding()
                    VStack(alignment: .leading){
                        TxtHeadingComponent(title: "FolderName")
                           
                    }
                }
                VStack(alignment:.leading){
                    TxtTagComponent(subTitle: "Edit Name:")
                    TextFieldComponent(placeHolder: "Folder name", field: $fieldVM.reName)
                    
                    TxtTagComponent(subTitle: "Emojies as an Icon :")
//                    GeometryReader{_ in
//                        Text("")
//                    }
//                    EmojiView()
                }
                Spacer()
                VStack{
                    HStack{
                       Button(action: {}){
                            TxtTagComponent(subTitle: "Cancel")
                        }
                       .foregroundColor(.black)
                       .frame(width:150 ,height:50)
                       
                       .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(4), lineWidth: 2))
                        Spacer()
                        Button(action: {}){
                             TxtTagComponent(subTitle: "Save Folder")
                         }
                       
                        .frame(width:150 ,height:50)
                        .foregroundColor(.green)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(4), lineWidth: 2))
                    }
                }
                
                
            }
            .padding()
          
        }
}

struct RenameFileView_Previews: PreviewProvider {
    static var previews: some View {
        RenameFileView()
    }
}
