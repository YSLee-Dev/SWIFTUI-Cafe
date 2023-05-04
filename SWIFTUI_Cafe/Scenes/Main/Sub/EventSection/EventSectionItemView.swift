//
//  EventSectionItemView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/03.
//

import SwiftUI

struct EventSectionItemView: View {
    let event : EventData
    
    var body: some View {
        VStack{
            self.event.img
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
            Text(self.event.title)
                .font(.headline)
                .frame(
                    maxWidth: .infinity,
                    alignment: .leading
                )
            Text(self.event.subTitle)
                .lineLimit(2)
                .font(.callout)
                .frame(
                    maxWidth: .infinity,
                    alignment: .topLeading
                )
        }
    }
}

struct EventSectionItemView_Previews: PreviewProvider {
    static var previews: some View {
        EventSectionItemView(event: EventData(img: Image("coffee"), title: "아아", subTitle: "아이스아메리카노"))
    }
}
