//
//  WatchaPartyItemModel.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit

struct WatchaPartyItemModel {
    let itemImg: UIImage
    let startTime: String
    let movieTitle: String
}

extension WatchaPartyItemModel {
    static func dummy() -> [WatchaPartyItemModel] {
        return [
            WatchaPartyItemModel(itemImg: .item7, startTime: "21:13", movieTitle: "왕과 사는 남자"),
            WatchaPartyItemModel(itemImg: .item8, startTime: "22:22", movieTitle: "파묘"),
            WatchaPartyItemModel(itemImg: .item5, startTime: "23:32", movieTitle: "크라임씬")
        ]
    }
}
