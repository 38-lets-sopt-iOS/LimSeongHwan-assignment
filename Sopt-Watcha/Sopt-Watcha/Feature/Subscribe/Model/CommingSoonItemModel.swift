//
//  CommingSoonItemModel.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit

struct CommingSoonItemModel {
    let itemImg: UIImage
}

extension CommingSoonItemModel {
    static func dummy() -> [CommingSoonItemModel] {
        return [
            CommingSoonItemModel(itemImg: .item3),
            CommingSoonItemModel(itemImg: .item4),
            CommingSoonItemModel(itemImg: .item9),
            CommingSoonItemModel(itemImg: .item1),
            CommingSoonItemModel(itemImg: .item2),
            CommingSoonItemModel(itemImg: .item3),
            CommingSoonItemModel(itemImg: .item4),
            CommingSoonItemModel(itemImg: .item9),
            CommingSoonItemModel(itemImg: .item1),
            CommingSoonItemModel(itemImg: .item2),
        ]
    }
}
