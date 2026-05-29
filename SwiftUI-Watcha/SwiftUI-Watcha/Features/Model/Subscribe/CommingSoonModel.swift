//
//  CommingSoonModel.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import Foundation

struct CommingSoonModel: Identifiable {
    let id: Int
    let imageName: String
}

extension CommingSoonModel {
    static let dummy: [CommingSoonModel] = [
        CommingSoonModel(id: 1, imageName: "item1"),
        CommingSoonModel(id: 2, imageName: "item2"),
        CommingSoonModel(id: 3, imageName: "item3"),
        CommingSoonModel(id: 4, imageName: "item4"),
        CommingSoonModel(id: 5, imageName: "item5"),
        CommingSoonModel(id: 6, imageName: "item1"),
        CommingSoonModel(id: 7, imageName: "item2"),
        CommingSoonModel(id: 8, imageName: "item3"),
        CommingSoonModel(id: 9, imageName: "item4"),
        CommingSoonModel(id: 10, imageName: "item5")
    ]
}
