//
//  HeaderView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/03.
//

import SwiftUI

struct HeaderView: View {
    let userData : UserData
    
    var body: some View {
        VStack(spacing: 10){
            HStack(alignment: .top){
                Text("\(self.userData.userName)님\n반갑습니다☕️")
                    .font(.title)
                Spacer()
                Button {
                    print("Refresh Btn Tap")
                } label: {
                    Image(systemName: "arrow.triangle.2.circlepath")
                        .foregroundColor(.green)
                }
            }
            
            
            HStack{
                Button {
                    print("New Btn Tap")
                } label: {
                    Image(systemName: "list.dash.header.rectangle")
                    Text("What's New")
                        .font(.callout)
                }
                
                Button {
                    print("Coupon Btn Tap")
                } label: {
                    Image(systemName: "giftcard")
                    Text("Coupon")
                        .font(.callout)
                }
                
               
                Spacer()
                Button {
                    print("Refresh Btn Tap")
                } label: {
                    Image(systemName: "bell")
                }
            }
            .foregroundColor(.black)
        }
        .padding(15)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(userData: UserData.shared)
    }
}
