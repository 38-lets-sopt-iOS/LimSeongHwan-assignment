//
//  BannerModel.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit

struct BannerModel {
    let itemImg: UIImage
}

extension BannerModel {
    static func dummy() -> [BannerModel] {
        return [
            BannerModel(itemImg: .item9),
            BannerModel(itemImg: .item1),
            BannerModel(itemImg: .item2),
            BannerModel(itemImg: .item3),
            BannerModel(itemImg: .item4),
        ]
    }
}
