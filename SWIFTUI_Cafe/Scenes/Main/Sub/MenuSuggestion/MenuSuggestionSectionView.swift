//
//  MenuSuggestionSectionView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/03.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    let coffeeList : [CoffeeMenuData]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack{
                ForEach(self.coffeeList, id: \.name) { list in
                    MenuSuggestionItemView(coffeeData: list)
                }
            }
            .padding(15)
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView(coffeeList: CoffeeMenuData.sample)
    }
}
