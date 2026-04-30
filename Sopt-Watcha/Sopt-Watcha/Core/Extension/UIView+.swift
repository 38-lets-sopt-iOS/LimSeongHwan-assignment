//
//  UIView+.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit
import SnapKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }

    func addBottomBorder(color: UIColor, height: CGFloat = 1) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
        addSubview(border)
        border.snp.makeConstraints {
            $0.leading.trailing.bottom.equalToSuperview()
            $0.height.equalTo(height)
        }
    }
}
