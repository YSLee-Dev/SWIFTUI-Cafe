//
//  Tab.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/02.
//

import SwiftUI

enum Tab{
    case home 
    case other
    
    var tabTextItem : Text{
        switch self{
        case .home:
            return Text("HOME")
        case .other:
            return Text("OTHER")
        }
    }
    
    var imageItem : Image{
        switch self{
        case .home:
            return Image(systemName: "house")
        case .other:
            return Image(systemName: "ellipsis")
        }
    }
}
