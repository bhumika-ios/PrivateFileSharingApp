//
//  LayoutType.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 30/12/22.
//

import Foundation
import SwiftUI

enum LayoutType: CaseIterable{
    case single
    case grid
    
    var columns: [GridItem]{
        switch self{
        case .single:
            return [GridItem(.flexible(), spacing: 0)]
            
        case .grid:
            return [GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())]
        }
    }
        
}
