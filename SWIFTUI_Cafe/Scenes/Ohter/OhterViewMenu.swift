//
//  OhterViewMenu.swift
//  SWIFTUI_Cafe
//
//  Created by 이윤수 on 2023/05/06.
//

import Foundation

enum OhterViewMenu : String, CaseIterable{
    case service = "서비스"
    case cs = "고객지원"
    case terms = "약관 및 정책"
    
    var title : String {
        self.rawValue
    }
    
    var menuList : [String]{
        switch self{
        case .service:
            return serviceList.allCases.map{
                $0.rawValue
            }
        case .cs:
            return csList.allCases.map{
                $0.rawValue
            }
        case .terms:
            return termsList.allCases.map{
                $0.rawValue
            }
        }
    }
    
    enum serviceList : String, CaseIterable{
        case frequency = "프리퀀시"
        case rewoard = "리워드"
        case coupon = "쿠폰"
        case giftCard = "기프트 카드"
        case new = "What's New"
        case notification = "알림"
        case myReview = "리뷰"
    }
    
    enum csList : String, CaseIterable{
        case storeCare = "스토어 케어"
        case voiceOfCustomer = "고객의 소리"
        case store = "매장 정보"
    }
    
    enum termsList : String, CaseIterable{
        case terms = "이용약관"
        case privacyTeams = "개인정보 처리 방침"
    }
}
