//
//  UIStackView+.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit

extension UIStackView {
    func addStackViews(_ views: UIView...) {
        views.forEach { self.addArrangedSubview($0) }
    }
}
