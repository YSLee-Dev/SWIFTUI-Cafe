//
//  MainViewModel.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/07.
//

import SwiftUI
import Combine

class MainViewModel : ObservableObject{
    let headerViewModel = HeaderViewModel()
    var bag = Set<AnyCancellable>()
    
    @Published var coffeeMenuList : [CoffeeMenuData] = [
        CoffeeMenuData(img: Image("coffee"), name: "아메리카노"),
        CoffeeMenuData(img: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenuData(img: Image("coffee"), name: "카페라떼"),
        CoffeeMenuData(img: Image("coffee"), name: "아이스 카페라떼"),
        CoffeeMenuData(img: Image("coffee"), name: "카푸치노"),
        CoffeeMenuData(img: Image("coffee"), name: "바닐라 라떼"),
        CoffeeMenuData(img: Image("coffee"), name: "오늘의 커피"),
    ]
    
    @Published var eventList : [EventData] = [
        EventData(img: Image("coffee"), title: "아아", subTitle: "얼죽아 여기여기 모여라"),
        EventData(img: Image("coffee"), title: "아바라", subTitle: "아이스 바닐라 라떼!"),
        EventData(img: Image("coffee"), title: "약과커피", subTitle: "약과가 올라간 라떼?")
    ]
    
    init(){
        self.headerViewModel.refreshTap
            .sink{ [weak self]_ in
                self?.coffeeMenuList.shuffle()
                self?.eventList.shuffle()
            }
            .store(in: &bag)
    }
}
