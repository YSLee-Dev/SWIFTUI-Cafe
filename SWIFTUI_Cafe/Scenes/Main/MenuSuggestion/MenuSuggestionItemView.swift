//
//  MenuSuggestionItemView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/03.
//

import SwiftUI

struct MenuSuggestionItemView: View {
    let coffeeData : CoffeeMenuData
    
    var body: some View {
        VStack(spacing: 10){
            self.coffeeData.img
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text(self.coffeeData.name)
                .font(.caption)
        }
    }
}

struct MenuSuggestionItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionItemView(coffeeData: CoffeeMenuData(img: Image("coffee"), name: "아메리카노"))
    }
}
