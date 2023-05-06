//
//  SettingUserView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/06.
//

import SwiftUI

struct SettingUserView : View{
    let userData : UserData
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text(userData.userName)
                    .font(.title)
                    .fontWeight(.bold)
                Text(userData.account)
                    .font(.caption)
            }
            
            Spacer()
            
            Button {
                print("Logout Btn Tap")
            } label: {
                Text("로그아웃")
                    .padding(10)
                    .foregroundColor(.green)
                    .overlay{
                        Capsule()
                            .stroke(Color.green)
                    }
            }
        }
    }
}

struct SettingUserView_Previews : PreviewProvider{
    static var previews: some View{
        SettingUserView(userData: UserData.shared)
    }
}
