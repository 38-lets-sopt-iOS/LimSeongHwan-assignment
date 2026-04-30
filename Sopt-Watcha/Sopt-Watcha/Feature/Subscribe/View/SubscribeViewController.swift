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
    
    private let newContentLabel = SectionTitleLabel(title: "방금 막 도착한 신상 컨텐츠")
    private let newContentSubLabel = SectionSubLabel(title: "예능부터 드라마까지!")
    private let newContentCollectionView = NewContentViewController()
    
    private let watgorijeumImg = UIImageView().then {
        $0.image = .watgorijeum
    }
    private let watgorijeumSubLabel = SectionSubLabel(title: "예능부터 드라마까지!")
    private let watgorijeumMoreButton = MoreButton()
    private let watgorijeumCollectionView = WatgorijeumViewController()
    
    // MARK: - SetUp

    override func setUp() {
        view.addSubviews(headerView, scrollView)
        scrollView.addSubview(contentView)
        addChild(bannerView)
        addChild(newContentCollectionView)
        addChild(watgorijeumCollectionView)
        contentView.addSubviews(bannerView.view, newContentLabel, newContentSubLabel, newContentCollectionView.view, watgorijeumImg, watgorijeumSubLabel, watgorijeumMoreButton, watgorijeumCollectionView.view)
        bannerView.didMove(toParent: self)
        newContentCollectionView.didMove(toParent: self)
        watgorijeumCollectionView.didMove(toParent: self)
    }
    
    // MARK: - 레이아웃
    
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
        newContentLabel.snp.makeConstraints {
            $0.top.equalTo(bannerView.view.snp.bottom).offset(34)
            $0.leading.equalToSuperview().inset(21)
        }
        newContentSubLabel.snp.makeConstraints {
            $0.top.equalTo(newContentLabel.snp.bottom).offset(3)
            $0.leading.equalTo(newContentLabel.snp.leading)
        }
        newContentCollectionView.view.snp.makeConstraints {
            $0.top.equalTo(newContentSubLabel.snp.bottom).offset(7)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(153)
        }
        watgorijeumImg.snp.makeConstraints {
            $0.top.equalTo(newContentCollectionView.view.snp.bottom).offset(45)
            $0.leading.equalTo(newContentLabel)
        }
        watgorijeumSubLabel.snp.makeConstraints {
            $0.top.equalTo(watgorijeumImg.snp.bottom).offset(8.5)
            $0.leading.equalTo(watgorijeumImg)
        }
        watgorijeumMoreButton.snp.makeConstraints {
            $0.top.equalTo(watgorijeumSubLabel)
            $0.trailing.equalToSuperview().inset(22)
        }
        watgorijeumCollectionView.view.snp.makeConstraints {
            $0.top.equalTo(watgorijeumSubLabel.snp.bottom).offset(7)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(153)
            $0.bottom.equalToSuperview().inset(50)
        }
    }
}
