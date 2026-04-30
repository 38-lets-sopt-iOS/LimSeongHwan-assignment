//
//  PurchaseViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit
import SnapKit
import Then

class PurchaseViewController: BaseUIViewController {
    private let label = UILabel().then {
        $0.text = "purchase"
    }
    
    override func setUp() {
        view.addSubviews(label)
    }
}
