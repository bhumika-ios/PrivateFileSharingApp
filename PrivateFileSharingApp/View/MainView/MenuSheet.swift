//
//  MenuSheet.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 03/01/23.
//

import SwiftUI

struct MenuSheet: View {
    @State var showingRenameSheet = false
    @State var showAddFile = false
    var body: some View {
        VStack(alignment: .leading){
           // Spacer()
            VStack(spacing:12){
//                Capsule()
//                    .fill(Color.gray)
//                    .frame(width: 60, height: 4)
                HStack{
                    Image(systemName: "folder.fill")
                    
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                        .padding()
                    VStack(alignment: .leading){
                        TxtHeadingComponent(title: "FolderName")
                        HStack{
                            Image(systemName: "link")
                                .foregroundColor(.green)
                            Text("Date, item")
                                .font(.custom("Genos-Medium", size: 25))
                                .foregroundColor(.gray)
                            //                        TxtTagComponent(subTitle: "EmailAddress")
                        }
//
                    }
                    Spacer()
//                    Image(systemName: "bell")
//                        .resizable()
//                        .frame(width: 25, height: 25)
                }
                Divider()
                    .padding(.vertical,-10)
               // ScrollView(.vertical, showsIndicators: false,content: {
                    VStack(alignment: .leading, spacing: 0){
                        Button(action: {
                            showAddFile.toggle()
                        }){
                            HStack{
                                Image(systemName: "plus.app")
                                
                                    .resizable()
                                    .foregroundColor(.black)
                                    .frame(width: 20, height: 20)
                                    .padding()
                                TxtTagComponent(subTitle: "Add To File")
                                    .foregroundColor(.black)
                                
                            }
                        }
                        .sheet(isPresented: $showAddFile){
                            AddFileView()
                                .presentationDetents([.large,.large])
                        }
                       
                        Button(action: {
                            showingRenameSheet.toggle()
                        }){
                            HStack{
                                Image(systemName: "pencil")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .frame(width: 20, height: 20)
                                    .padding()
                                TxtTagComponent(subTitle:  "Rename")
                                    .foregroundColor(.black)
                               // Spacer()
                                
    //                            Button(action: {}){
    //                                Image(systemName: "chevron.forward")
    //                                    .resizable()
    //                                    .frame(width: 8, height: 18)
    //                                    .foregroundColor(.gray)
    //                            }
                                
                            }
                        }
                        .sheet(isPresented: $showingRenameSheet){
                            RenameFileView()
                                .presentationDetents([.large,.large])
                        }
                        
                        HStack{
                            

                            Image(systemName: "arrow.turn.down.right")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            
                            TxtTagComponent(subTitle: "Move")
                            Spacer()
                            
//                            Button(action: {}){
//                                Image(systemName: "chevron.forward")
//                                    .resizable()
//                                    .frame(width: 8, height: 18)
//                                    .foregroundColor(.gray)
//                            }
                            
                        }
                        HStack{
                            Image(systemName: "trash")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            TxtTagComponent(subTitle: "Delete")
                        }
                        HStack{
                          Image(systemName: "link")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            TxtTagComponent(subTitle: "Share")
                        }
                        HStack{
                            Image(systemName: "icloud.and.arrow.up")
                            
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            TxtTagComponent(subTitle: "FileRequiest")
                        }
                        
                        HStack{
                            Image(systemName: "doc.plaintext")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            TxtTagComponent(subTitle: "Details")
                        }
                        HStack{
                           
                            Image(systemName: "icloud.and.arrow.down")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            TxtTagComponent(subTitle: "Download")
                        }
                         
                    }
                    .padding(.vertical,-20)
                    .padding(.horizontal)
                    .padding(.top,10)
                    .padding(.bottom)
                 
                //})
            }
           
            .padding(.top)
            .clipShape(CustomCorner(corners: [.topLeft,.topRight]))
        }
        .ignoresSafeArea()
        //.background(Color.black.opacity(0.3).ignoresSafeArea())
    }
}

struct MenuSheet_Previews: PreviewProvider {
    static var previews: some View {
        MenuSheet()
    }
}
