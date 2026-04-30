//
//  WebtoonViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit
import SnapKit
import Then

class WebtoonViewController: BaseUIViewController {
    private let label = UILabel().then {
        $0.text = "Webtoon"
    }
    
    override func setUI() {
        view.addSubviews(label)
    }
}
