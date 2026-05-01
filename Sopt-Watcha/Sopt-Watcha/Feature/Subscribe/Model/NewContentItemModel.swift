//
//  NewContentItemModel.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit

struct NewContentItemModel {
    let itemImg: UIImage
}

extension NewContentItemModel {
    static func dummy() -> [NewContentItemModel] {
        return [
            NewContentItemModel(itemImg: .item5),
            NewContentItemModel(itemImg: .item6),
            NewContentItemModel(itemImg: .item7),
            NewContentItemModel(itemImg: .item8),
            NewContentItemModel(itemImg: .item5),
        ]
    }
}
