//
//  NewContentModel.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import Foundation

struct NewContentModel: Identifiable {
    let id: Int
    let imageName: String
}

extension NewContentModel {
    static let dummy: [NewContentModel] = [
        NewContentModel(id: 1, imageName: "item6"),
        NewContentModel(id: 2, imageName: "item7"),
        NewContentModel(id: 3, imageName: "item8"),
        NewContentModel(id: 4, imageName: "item9"),
        NewContentModel(id: 5, imageName: "item6")
    ]
}
