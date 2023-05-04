//
//  MainTabView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/02.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem{
                    Tab.home.tabTextItem
                    Tab.home.imageItem
                }
            Text("OTHER")
                .tabItem{
                    Tab.other.tabTextItem
                    Tab.other.imageItem
                }
        }
        .accentColor(.green)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
