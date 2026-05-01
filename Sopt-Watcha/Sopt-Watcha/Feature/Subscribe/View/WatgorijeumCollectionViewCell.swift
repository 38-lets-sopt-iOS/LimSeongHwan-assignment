//
//  WatgorijeumCollectionViewCell.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

class WatgorijeumCollectionViewCell: UICollectionViewCell {
    // MARK: - 프로퍼티
    
    static let identifier: String = "WatgorijeumCollectionViewCell"
    
    // MARK: - UI
    
    private let wagorijeumImg = UIImageView().then {
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
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
    
    // MARK: - SetUp

    private func setUp() {
        addSubviews(wagorijeumImg)
    }
    
    // MARK: - 레이아웃
    
    private func setLayout() {
        wagorijeumImg.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

// MARK: - dataBind

extension WatgorijeumCollectionViewCell {
    func dataBind(_ itemData: WatgorijeumModel) {
        wagorijeumImg.image = itemData.itemImg
    }
}
