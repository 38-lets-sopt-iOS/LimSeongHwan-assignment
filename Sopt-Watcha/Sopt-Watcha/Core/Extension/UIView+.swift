//
//  UIView+.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
