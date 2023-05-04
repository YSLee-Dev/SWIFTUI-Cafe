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
        VStack{
            HStack{
                Text("Events")
                    .font(.callout)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button {
                    print("EVENT BTN TAP")
                } label: {
                    Text("See all")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }

            }
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
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
                    .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 0))
                    
                }
            }
            .frame(
                minHeight: 200
            )
        }
    }
}

struct EventSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventSectionView(eventDataList: EventData.sample)
    }
}
