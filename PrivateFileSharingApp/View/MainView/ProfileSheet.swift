//
//  ProfileSheet.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 29/12/22.
//

import SwiftUI

struct ProfileSheet: View {
   
    var body: some View {
        VStack(alignment: .leading){
            Spacer()
            VStack(spacing:12){
                Capsule()
                    .fill(Color.gray)
                    .frame(width: 60, height: 4)
                HStack{
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .padding()
                    VStack(alignment: .leading){
                        TxtHeadingComponent(title: "XXX")
                       Text("Email Address")
                            .font(.custom("Genos-Medium", size: 25))
                            .foregroundColor(.green)
//                        TxtTagComponent(subTitle: "EmailAddress")
//
                    }
                    Spacer()
                    Image(systemName: "bell")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                .padding()
                ScrollView(.vertical, showsIndicators: false,content: {
                    VStack(alignment: .leading, spacing: 0){
                        HStack{
                            Image(systemName: "externaldrive")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            TxtTagComponent(subTitle: "Files")
                            
                        }
                        HStack{
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            TxtTagComponent(subTitle:  "Setting")
                            Spacer()
                            
                            Button(action: {}){
                                Image(systemName: "chevron.forward")
                                    .resizable()
                                    .frame(width: 8, height: 18)
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        HStack{
                            
                            Image(systemName: "gearshape")
                            
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            
                            TxtTagComponent(subTitle: "Administration")
                            Spacer()
                            
                            Button(action: {}){
                                Image(systemName: "chevron.forward")
                                    .resizable()
                                    .frame(width: 8, height: 18)
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        HStack{
                            Image(systemName: "power")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                            TxtTagComponent(subTitle: "Log Out")
                        }
                         
                    }
                    .padding(.horizontal)
                    .padding(.top,10)
                    .padding(.bottom)
                 
                })
            }
            .padding(.top)
            .clipShape(CustomCorner(corners: [.topLeft,.topRight]))
        }
        .ignoresSafeArea()
        //.background(Color.black.opacity(0.3).ignoresSafeArea())
    }
}

struct ProfileSheet_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSheet()
    }
}

struct CustomCorner: Shape{
    var corners: UIRectCorner
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners,cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}
