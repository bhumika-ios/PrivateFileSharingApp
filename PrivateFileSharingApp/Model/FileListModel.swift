//
//  FileListModel.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 28/12/22.
//

import SwiftUI

struct FileModel: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let Description: String
    let viewCount: Int
    let uploadingDate: String
    
}

struct FileList{
    static let list = [
    FileModel(imageName: "folder", title: "f1", Description: "dxvdxvgsdgghgfvsdvgdsdsf", viewCount: 2, uploadingDate: "february 17,2022"),
    FileModel(imageName: "camera", title: "nb", Description: "dxvdxvgsdgvsdvgdhjhgjghjhgjsdsf", viewCount: 5, uploadingDate: "february 05,2022"),
    FileModel(imageName: "folder", title: "bn", Description: "dxvdxvjhkhjkjhgsdgvsdvgdsdsf", viewCount: 2, uploadingDate: "february 13,2022"),
    FileModel(imageName: "camera", title: "nbb", Description: "dxvdxvgsdgvsdvgdsdsf", viewCount: 3, uploadingDate: "february 27,2022"),
    FileModel(imageName: "folder", title: "fnbn1", Description: "dxvdxvgsdgvsdvfghgfgdsdsf", viewCount: 8, uploadingDate: "february 16,2022"),
    FileModel(imageName: "folder", title: "nbhjh", Description: "dxvdxvgsdgvsdvgdsghgfdsf", viewCount: 2, uploadingDate: "february 07,2022"),
    FileModel(imageName: "folder", title: "fsx", Description: "dxvdxvgsdgvsdvgvnkmjlkdsdsf", viewCount: 1, uploadingDate: "february 14,2022"),
    FileModel(imageName: "folder", title: "f1nn", Description: "dxvdxvgsdgvsjk,jk,dvgdsdsf", viewCount: 9, uploadingDate: "february 19,2022"),
    FileModel(imageName: "folder", title: "jj", Description: "dxvdxvgsdgvsdvgdskhmmdsf", viewCount: 12, uploadingDate: "february 20,2022"),
    FileModel(imageName: "camera", title: "pp", Description: "dxvdxvgsghfghdgvsdmhnvgdsdsf", viewCount: 10, uploadingDate: "february 22,2022"),
    FileModel(imageName: "folder", title: "pp", Description: "dxvdxvgsdjkjhgvsdvgdsdsf", viewCount: 7, uploadingDate: "february 25,2022")
    ]
}
