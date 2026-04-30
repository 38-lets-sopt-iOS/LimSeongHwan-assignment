//
//  UIViewController+.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit

extension UIViewController {
    func addChilds(_ viewControllers: UIViewController...) {
        viewControllers.forEach {
            addChild($0)
            $0.didMove(toParent: self)
        }
    }
}
