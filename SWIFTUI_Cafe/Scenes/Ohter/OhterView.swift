//
//  OhterView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/06.
//

import SwiftUI

struct OtherView : View{
    var body: some View{
        NavigationView{
            List{
                ForEach(OhterViewMenu.allCases, id: \.self){ data in
                    Section(content: {
                        ForEach(data.menuList, id: \.self){ menu in
                            NavigationLink(
                                destination: Text(menu),
                                label: {
                                    Text(menu)
                                })
                        }
                    }, header: {
                        Text(data.title)
                    })
                }
               
            }
            .listStyle(.plain)
            .navigationTitle("OHTER")
            .toolbar{
                NavigationLink(
                    destination: SettingView(),
                    label: {
                        Image(systemName: "gear")
                    })
            }
        }
    }
}

struct OhterView_Previews : PreviewProvider{
    static var previews: some View{
        OtherView()
    }
}
