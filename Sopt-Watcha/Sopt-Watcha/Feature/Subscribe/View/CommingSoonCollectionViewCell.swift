//
//  CommingSoonCollectionViewCell.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

class CommingSoonCollectionViewCell: UICollectionViewCell {
    // MARK: - 프로퍼티
    
    static let identifier: String = "CommingSoonCollectionViewCell"
    
    // MARK: - UI
    
    private let commingSoonImg = UIImageView().then {
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
    }
    
    // MARK: - init
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - SetUp
    
    private func setUp() {
        addSubviews(commingSoonImg)
    }
    
    // MARK: - 레이아웃
    
    private func setLayout() {
        commingSoonImg.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

// MARK: - dataBind

extension CommingSoonCollectionViewCell {
    func dataBind(_ itemData: CommingSoonItemModel) {
        commingSoonImg.image = itemData.itemImg
    }
}

