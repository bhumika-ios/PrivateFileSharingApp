//
//  AddFileView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 03/01/23.
//

import SwiftUI

struct AddFileView: View {
    @ObservedObject var fieldVM = FieldViewModel()
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                TxtHeadingComponent(title: "Create Folder")
                Image(systemName: "pencil")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
            }
            VStack(alignment:.leading){
                TxtTagComponent(subTitle: "Type Name:")
                TextFieldComponent(placeHolder: "Folder name", field: $fieldVM.name)
                
                TxtTagComponent(subTitle: "Emojies as an Icon :")
            }
            
          
        }
        .padding()
    }
}

struct AddFileView_Previews: PreviewProvider {
    static var previews: some View {
        AddFileView()
    }
}

struct EmojiView : View{
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 15){
                Text("")
            }
        }
    }
    func getEmojiList()->[[Int]]{
        var emojies : [[Int]] = []
        
        for i in 0x1F601...0x1F64F{
            var temp : [Int] = []
            
            for j in i...i+3{
                temp.append(j)
            }
            emojies.append(temp)
        }
        return emojies
    }
}
