//
//  CoffeeMenuData.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/03.
//

import SwiftUI

struct CoffeeMenuData{
    let img : Image
    let name : String
    
    static let sample : [CoffeeMenuData] = [
        CoffeeMenuData(img: Image("coffee"), name: "아메리카노"),
        CoffeeMenuData(img: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenuData(img: Image("coffee"), name: "카페라떼"),
        CoffeeMenuData(img: Image("coffee"), name: "아이스 카페라떼"),
        CoffeeMenuData(img: Image("coffee"), name: "카푸치노"),
        CoffeeMenuData(img: Image("coffee"), name: "바닐라 라떼"),
        CoffeeMenuData(img: Image("coffee"), name: "오늘의 커피"),
    ]
}
