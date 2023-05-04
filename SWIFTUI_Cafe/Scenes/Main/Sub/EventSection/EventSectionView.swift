//
//  EventSectionView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/03.
//

import SwiftUI

struct EventSectionView: View {
    let eventDataList : [EventData]
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack(spacing: 15){
                    ForEach(self.eventDataList, id: \.title){ data in
                        EventSectionItemView(event: data)
                            .frame(
                                width: geometry.size.width - 30
                            )
                    }
                }
                .padding(.horizontal, 15)
            }
        }
    }
}

struct EventSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventSectionView(eventDataList: EventData.sample)
    }
}
