//
//  BannerCollectionViewCell.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

class BannerCollectionViewCell: UICollectionViewCell {
    // MARK: - 프로퍼티
    static let identifier: String = "BannerCollectionViewCell"
    
    // MARK: - UI
    
    private let bannerImg = UIImageView().then {
        $0.layer.cornerRadius = 12
        $0.clipsToBounds = true
    }
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 레이아웃
    
    private func setUp() {
        addSubviews(bannerImg)
    }
    
    private func setLayout() {
        bannerImg.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

extension BannerCollectionViewCell {
    func dataBind(_ itemData: BannerModel) {
        bannerImg.image = itemData.itemImg
    }
}
