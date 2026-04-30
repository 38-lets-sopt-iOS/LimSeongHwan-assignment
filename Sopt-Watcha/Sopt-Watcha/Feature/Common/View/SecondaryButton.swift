//
//  CTA.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit

class SecondaryButton: UIButton {
    init(title: String) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        backgroundColor = .gray600
        self.layer.cornerRadius = 10
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.font = .medium
        setTitleColor(.watchaWhite, for: .normal)
    }
}
