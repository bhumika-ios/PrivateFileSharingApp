//
//  AddFileView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 03/01/23.
//

import SwiftUI

struct AddFileView: View {
    @ObservedObject var fieldVM = FieldViewModel()
   // @Binding var show : Bool
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
       // .background(Color("Gray").edgesIgnoringSafeArea(.all))
    
}

struct AddFileView_Previews: PreviewProvider {
    static var previews: some View {
        AddFileView()
    }
}

//struct EmojiView : View{
//    var body: some View{
//        ScrollView(.vertical, showsIndicators: false){
//            VStack(spacing: 15){
//                ForEach(self.getEmojiList(),id: \.self){ i in
//                    HStack(spacing: 25){
//                        ForEach(i, id: \.self){ j in
//                            Button(action: {
//
//                            }){
//                                if (UnicodeScalar(j)?.properties.isEmoji)! {
//                                    Text(String(UnicodeScalar(j)!)).font(.system(size: 55))
//                                } else{
//                                    Text("")
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3)
//        .background(Color.white)
//        .cornerRadius(25)
//    }
//    func getEmojiList()->[[Int]]{
//        var emojies : [[Int]] = []
//
//        for i in 0x1F601...0x1F64F{
//            var temp : [Int] = []
//
//            for j in i...i+3{
//                temp.append(j)
//            }
//            emojies.append(temp)
//        }
//        return emojies
//    }
//}
