//
//  MainView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/04.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            HeaderView(userData: UserData.shared)
            MenuSuggestionSectionView(coffeeList: CoffeeMenuData.sample, userData: UserData.shared)
            EventSectionView(eventDataList: EventData.sample)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
