//
//  SearchViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit
import SnapKit
import Then

class SearchViewController: BaseUIViewController {
    private let label = UILabel().then {
        $0.text = "Search"
    }
    
    override func setUI() {
        view.addSubviews(label)
    }
}
