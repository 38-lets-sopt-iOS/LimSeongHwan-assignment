//
//  AuthSubLabel.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit

class AuthSubLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        font = .body1
        textColor = UIColor(hex: "BFBFBF")
        numberOfLines = 2
    }
}
