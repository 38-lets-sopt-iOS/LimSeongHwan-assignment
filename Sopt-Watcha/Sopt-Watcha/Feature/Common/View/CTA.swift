//
//  CTA.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit

class CTA: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        backgroundColor = .gray600
        self.layer.cornerRadius = 10
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.font = .medium
        setTitleColor(.white, for: .normal)
    }
}
