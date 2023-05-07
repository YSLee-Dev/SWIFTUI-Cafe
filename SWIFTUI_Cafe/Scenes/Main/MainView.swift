//
//  MainView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/04.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        ScrollView{
            HeaderView(userData: UserData.shared, viewModel: viewModel.headerViewModel)
            MenuSuggestionSectionView(coffeeList: $viewModel.coffeeMenuList, userData: UserData.shared)
            EventSectionView(eventDataList: $viewModel.eventList)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
