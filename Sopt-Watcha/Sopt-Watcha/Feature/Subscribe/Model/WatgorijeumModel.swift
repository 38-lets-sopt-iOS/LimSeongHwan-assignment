//
//  WatgorijeumModel.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit

struct WatgorijeumModel {
    let itemImg: UIImage
}

extension WatgorijeumModel {
    static func dummy() -> [WatgorijeumModel] {
        return [
            WatgorijeumModel(itemImg: .item9),
            WatgorijeumModel(itemImg: .item1),
            WatgorijeumModel(itemImg: .item2),
            WatgorijeumModel(itemImg: .item3),
            WatgorijeumModel(itemImg: .item4),
            WatgorijeumModel(itemImg: .item9),
            WatgorijeumModel(itemImg: .item1),
            WatgorijeumModel(itemImg: .item2),
            WatgorijeumModel(itemImg: .item3),
            WatgorijeumModel(itemImg: .item4),
        ]
    }
}
