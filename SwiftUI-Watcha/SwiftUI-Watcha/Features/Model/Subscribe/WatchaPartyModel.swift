//
//  WatchaPartyModel.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import Foundation

struct WatchaPartyModel: Identifiable {
    let id: Int
    let image: String
    let startTime: String
    let movieTitle: String
}

extension WatchaPartyModel {
    static let dummy: [WatchaPartyModel] = [
        WatchaPartyModel(id: 1, image: "item8", startTime: "21:13", movieTitle: "왕과사는 남자"),
        WatchaPartyModel(id: 2, image: "item9", startTime: "22:22", movieTitle: "파묘"),
        WatchaPartyModel(id: 3, image: "item7", startTime: "23:36", movieTitle: "크라임씬"),
    ]
}
