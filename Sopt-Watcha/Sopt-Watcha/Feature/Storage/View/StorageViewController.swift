//
//  StorageViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit
import SnapKit
import Then

class StorageViewController: BaseUIViewController {
    private let label = UILabel().then {
        $0.text = "Storage"
    }
    
    override func setUI() {
        view.addSubviews(label)
    }
}
