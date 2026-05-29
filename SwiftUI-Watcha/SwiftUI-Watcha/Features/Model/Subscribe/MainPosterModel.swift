//
//  MainPoster.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import Foundation

struct MainPoster: Identifiable {
    let id: Int
    let imageName: String
}

extension MainPoster {
    static let dummy: [MainPoster] = [
        MainPoster(id: 1, imageName: "item1"),
        MainPoster(id: 2, imageName: "item2"),
        MainPoster(id: 3, imageName: "item3"),
        MainPoster(id: 4, imageName: "item4"),
        MainPoster(id: 5, imageName: "item5"),
    ]
}
