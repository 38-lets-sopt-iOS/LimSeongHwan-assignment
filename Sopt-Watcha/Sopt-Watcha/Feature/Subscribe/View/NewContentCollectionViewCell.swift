//
//  NewContentCollectionViewCell.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

class NewContentCollectionViewCell: UICollectionViewCell {
    // MARK: - 프로퍼티
    static let identifier: String = "NewContentCollectionViewCell"
    
    // MARK: - UI
    
    private let newContentImg = UIImageView().then {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
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
    
    // MARK: - SetUp
    private func setUp() {
        addSubviews(newContentImg)
    }

    // MARK: - 레이아웃
    private func setLayout() {
        newContentImg.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

// MARK: - dataBind

extension NewContentCollectionViewCell {
    func dataBind(_ itemData: NewContentItemModel) {
        newContentImg.image = itemData.itemImg
    }
}
