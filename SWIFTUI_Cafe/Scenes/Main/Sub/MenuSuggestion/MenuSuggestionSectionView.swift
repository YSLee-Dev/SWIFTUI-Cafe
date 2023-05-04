//
//  MenuSuggestionSectionView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/03.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    let coffeeList : [CoffeeMenuData]
    let userData : UserData
    
    var body: some View {
        VStack(alignment: .leading){
            Text("\(self.userData.userName)님을 위한 추천 메뉴")
                .font(.callout)
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 0))
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack{
                    ForEach(self.coffeeList, id: \.name) { list in
                        MenuSuggestionItemView(coffeeData: list)
                    }
                }
            }
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 0))
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView(coffeeList: CoffeeMenuData.sample, userData: UserData.shared)
    }
}
