//
//  MoreButton.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

final class MoreButton: UIButton {
    override init (frame: CGRect) {
        super.init(frame: frame)
        setTitle("더보기", for: .normal)
        titleLabel?.font = .cap1
        titleLabel?.textColor = UIColor(hex: "BABAC1")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
