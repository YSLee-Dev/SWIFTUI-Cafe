//
//  HeaderViewModel.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/07.
//

import Combine

class HeaderViewModel : ObservableObject{
    var refreshTap = PassthroughSubject<Void, Never>()
}
