//
//  HorizantalScrollingView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct HorizantalScrollingView: View {
    var fileList: [FileModel] = FileList.list
    @State var showList = false
    @State var selectedLayout : LayoutType = .single
    var body: some View {
        NavigationView{
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10){
                    BtnScrollComponent(action: {
                        
                    }){
                        
                        HStack{
                            
                            Image(systemName: "menucard.fill")
                            Text("My Files")
                        }
                    }
                    BtnScrollComponent(action: {
                        
                    }){
                        HStack{
                            Image(systemName: "icloud.and.arrow.up")
                            Text("Upload/Create")
                        }
                    }
                    BtnScrollComponent(action: {
                        
                    }){
                        
                        HStack{
                            Image(systemName: "checkmark.square")
                            Text("Select")
                        }
                    }
                    BtnScrollComponent(action: {}){
                        VStack{
                            Picker("Layout", selection: $selectedLayout) {
                                ForEach(LayoutType.allCases, id: \.self) { type in
                                    switch type{
                                    case .single:
                                       // Text("List")
                                        HStack{
                                            Image(systemName: "list.bullet")
                                              
                                            //Text("ListView")
                                                
                                        }
                                        .frame(width: 20, height: 20)
                                    case .grid:
                                        HStack{
                                            Image(systemName: "square.grid.3x3")
                                         //   Text("GridView")
                                              
                                        }
                                       // Image(systemName: "square.grid.2*2")
                                    }
                                       
                                }
                              
                            }
                            .tint(.black)
                            .pickerStyle(.menu)
                           
                        }
                        
                        
                    }
                    .foregroundColor(.black)
//                        BtnScrollComponent(action: {
//                            if showList == true{
//                                showList.toggle()
//                            }
//                        }){
//                            // Image(systemName: "square.grid.3x3.fill")
//                            HStack{
//                                //Image(systemName: "square.split.2x2.fill")
//                                Image(systemName: showList ?  "square.grid.3x3.fill" : "square.fill.text.grid.1x2")
//                                // Image(systemName: "square.fill.text.grid.1x2")
//
//                                Text( showList ? "GridView" : "ListView")
//                            }
//
//                    }
                    
                    }
                }
            ScrollView{
                LazyVGrid(columns: selectedLayout.columns, spacing: 1) {
                    ForEach(fileList) { list in
                        switch(selectedLayout){
                        case.single:
                            FileListView(imageName: list.imageName, title: list.title, uploadingDate: list.uploadingDate)
                        default:
                            FileGridView(imageName: list.imageName, title: list.title, uploadingDate:list.uploadingDate)
                           
                        }
                           
                    }
                    
                }
                
            }
            
                   
                }
           
        
        
        }
    }
}

struct HorizantalScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        HorizantalScrollingView()
    }
}
struct BtnScrollComponent<WhateverYourWant: View>: View {
    let action: () -> Void
    let content: WhateverYourWant
    
    init(action: @escaping () -> Void, @ViewBuilder content: () -> WhateverYourWant) {
        self.action = action
        self.content = content()
    }
    var body: some View {
        VStack{
           
                Button(action: action){
                    HStack{
                        content
                }
                    .frame(maxWidth: .infinity, maxHeight: 25)
                    .padding()
                   
                    .background(Color("Gray"))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                   
                    .foregroundColor(.black)
                    .font(.custom("Genos-Medium", size: 20))
                   
            }
        }
      
    }
}

