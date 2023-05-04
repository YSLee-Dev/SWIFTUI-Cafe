//
//  UserData.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/04.
//

import Foundation

struct UserData{
    let userName : String
    let account : String
    
    static let shared = UserData(userName: "Test", account: "Test.com")
}
