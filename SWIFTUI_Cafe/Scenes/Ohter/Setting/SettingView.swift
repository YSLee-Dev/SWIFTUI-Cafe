//
//  SettingView.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/06.
//

import SwiftUI

struct SettingView : View{
    var body: some View{
        List{
            Section{
                SettingUserView(userData: UserData.shared)
            }
            
            Section{
                Button {
                    print("정보 수정 버튼 클릭")
                } label: {
                    Text("회원 정보 수정")
                }
                
                Button {
                    print("탈퇴 버튼 클릭")
                } label: {
                    Text("회원 탈퇴")
                }
            }
        }
        .listStyle(.plain)
        .navigationTitle("설정")
    }
}

struct SettingView_Previews : PreviewProvider{
    static var previews: some View{
        SettingView()
    }
}
