//
//  SubscribeViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit
import SnapKit
import Then

class SubscribeViewController: BaseUIViewController {
    // MARK: - UI
    
    private let headerView = Header(title: "구독")
    
    private let scrollView = UIScrollView().then {
        $0.backgroundColor = .clear
    }
    private let contentView = UIView().then {
        $0.backgroundColor = .clear
    }
    
    private let bannerView = BannerViewController()
    
    private let 
    
    // MARK: - 레이아웃

    override func setUp() {
        view.addSubviews(headerView, scrollView)
        scrollView.addSubview(contentView)
        addChild(bannerView)
        contentView.addSubview(bannerView.view)
        bannerView.didMove(toParent: self)
    }
    
    override func setLayout() {
        headerView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }
        scrollView.snp.makeConstraints {
            $0.top.equalTo(headerView.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()
        }
        contentView.snp.makeConstraints {
            $0.edges.equalTo(scrollView.contentLayoutGuide)
            $0.width.equalTo(scrollView.frameLayoutGuide)
            $0.height.greaterThanOrEqualToSuperview().priority(.low)
        }
        bannerView.view.snp.makeConstraints {
            $0.top.equalToSuperview().inset(28)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(403)
        }
    }
    
}
