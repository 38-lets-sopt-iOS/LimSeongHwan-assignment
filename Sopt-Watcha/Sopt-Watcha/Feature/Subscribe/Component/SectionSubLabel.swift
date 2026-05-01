//
//  SectionSubLabel.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

final class SectionSubLabel: UILabel {
    init(title: String) {
        super.init(frame: .zero)
        font = .subHead1
        text = title
        textColor = UIColor(hex: "BABAC1")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
