//
//  WatgorijeumModel.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import Foundation

struct WatgorijeumModel: Identifiable {
    let id: Int
    let imageName: String
}

extension WatgorijeumModel {
    static let dummy: [WatgorijeumModel] = [
        WatgorijeumModel(id: 1, imageName: "item3"),
        WatgorijeumModel(id: 2, imageName: "item4"),
        WatgorijeumModel(id: 3, imageName: "item5"),
        WatgorijeumModel(id: 4, imageName: "item1"),
        WatgorijeumModel(id: 5, imageName: "item2"),
        WatgorijeumModel(id: 6, imageName: "item3"),
        WatgorijeumModel(id: 7, imageName: "item4"),
        WatgorijeumModel(id: 8, imageName: "item5"),
        WatgorijeumModel(id: 9, imageName: "item1"),
        WatgorijeumModel(id: 10, imageName: "item2")
    ]
}
