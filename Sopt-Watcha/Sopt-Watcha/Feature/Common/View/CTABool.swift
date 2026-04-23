//
//  CTA.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/23/26.
//

import UIKit

class CTABool: UIButton {
    override var isEnabled: Bool {
        didSet {
            self.isEnabled ? self.setEnableButton() : self.setDisableButton()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpFillButton()
        self.isEnabled = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUpFillButton() {
        self.layer.cornerRadius = 10
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.font = .medium
    }

    private func setEnableButton() {
        isUserInteractionEnabled = true
        backgroundColor = .pink
        setTitleColor(.white, for: .normal)
    }

    private func setDisableButton() {
        isUserInteractionEnabled = false
        backgroundColor = .gray400
        setTitleColor(.gray200, for: .normal)
    }
}
