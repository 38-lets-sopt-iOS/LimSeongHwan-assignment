//
//  WatchaPartyCollectionViewCell.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

class WatchaPartyCollectionViewCell: UICollectionViewCell {
    // MARK: - 프로퍼티
    
    static let identifier: String = "WatchaPartyCollectionViewCell"
    
    // MARK: - UI
    
    private let watchaPartyImg = UIImageView().then {
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
    }
    
    private let alarmButton = UIButton().then {
        $0.setImage(.notificationBoldIcon, for: .normal)
        $0.backgroundColor = .watchaWhite
        $0.layer.cornerRadius = 100
        $0.clipsToBounds = true
    }

    private let timeInfoLabel = UILabel().then {
        $0.font = .body1
        $0.textColor = .watchaPink
    }

    private let titleInfoLabel = UILabel().then {
        $0.font = .subHead3
        $0.textColor = .watchaWhite
    }

    // MARK: - init

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - setUp

    private func setUp() {
        contentView.backgroundColor = .gray600
        contentView.addSubviews(watchaPartyImg, alarmButton, timeInfoLabel, titleInfoLabel)
    }

    // MARK: - 레이아웃

    private func setLayout() {
        watchaPartyImg.snp.makeConstraints {
            $0.top.horizontalEdges.equalToSuperview()
            $0.width.equalTo(196)
            $0.height.equalTo(139)
        }
        alarmButton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(7)
            $0.trailing.equalToSuperview().inset(5)
            $0.size.equalTo(35)
        }
        timeInfoLabel.snp.makeConstraints {
            $0.top.equalTo(watchaPartyImg.snp.bottom).offset(6)
            $0.leading.equalToSuperview().inset(8)
        }
        titleInfoLabel.snp.makeConstraints {
            $0.top.equalTo(timeInfoLabel.snp.bottom).offset(6)
            $0.leading.equalTo(timeInfoLabel)
            $0.bottom.equalToSuperview().inset(7)
        }
    }
}

// MARK: - dataBind

extension WatchaPartyCollectionViewCell {
    func dataBind(_ itemData: WatchaPartyItemModel) {
        watchaPartyImg.image = itemData.itemImg
        timeInfoLabel.text = "오늘 \(itemData.startTime)에 시작"
        titleInfoLabel.text = "# \(itemData.movieTitle)"
    }
}

