//
//  SectionTitleLabel.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

final class SectionTitleLabel: UILabel {
    init(title: String) {
        super.init(frame: .zero)
        font = .head3
        textColor = .watchaWhite
        text = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
