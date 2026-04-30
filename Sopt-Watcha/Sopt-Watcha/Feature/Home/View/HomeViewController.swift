//
//  HomeViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit
import SnapKit
import Then

class HomeViewController: BaseUIViewController {
    
    private let headerView = Header(title: "구독")
    override func setUI() {
        view.addSubviews(headerView)
    }
    
    override func setLayout() {
        headerView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
}
