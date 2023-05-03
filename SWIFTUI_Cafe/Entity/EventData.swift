//
//  EventData.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/03.
//

import SwiftUI

struct EventData{
    let img : Image
    let title : String
    let subTitle : String
    
    static let sample : [EventData] = [
        EventData(img: Image("coffee"), title: "아아", subTitle: "얼죽아 여기여기 모여라"),
        EventData(img: Image("coffee"), title: "아바라", subTitle: "아이스 바닐라 라떼!"),
        EventData(img: Image("coffee"), title: "약과커피", subTitle: "약과가 올라간 라떼?")
    ]
}
