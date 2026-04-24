//
//  UITextField+.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit

extension UITextField {
    func setPlaceHolder(placeholder: String, color: UIColor) {
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: color])
    }
}
