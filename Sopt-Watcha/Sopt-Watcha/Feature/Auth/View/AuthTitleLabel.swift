//
//  TitleLabel.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit

final class AuthTitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        textColor = .white
        font = .head2
        numberOfLines = 2
    }
}
