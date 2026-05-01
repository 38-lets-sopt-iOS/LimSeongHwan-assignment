//
//  CommingSoonViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

class CommingSoonViewController: BaseUIViewController {
    // MARK: - 프로퍼티
    
    private let collectionView = UICollectionView(frame: .zero,collectionViewLayout: UICollectionViewLayout())
    private var itemList = CommingSoonItemModel.dummy()
    
    final let inset = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 0)
    final let interItemSpacing: CGFloat = 13
    final let cellWidth: CGFloat = 103
    final let cellHeight: CGFloat = 153
    
    // MARK: - 라이프 사이클
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionLayout()
    }
    
    // MARK: - SetUp
    
    override func setUp() {
        collectionView.backgroundColor = .clear
        view.addSubview(collectionView)
    }
    
    // MARK: - Register
    
    override func register() {
        collectionView.register(CommingSoonCollectionViewCell.self, forCellWithReuseIdentifier: CommingSoonCollectionViewCell.identifier)
    }
    
    // MARK: - 레이아웃
    
    override func setLayout() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func setCollectionLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.sectionInset = inset
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        flowLayout.minimumInteritemSpacing = interItemSpacing
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.setCollectionViewLayout(flowLayout, animated: true)
    }
    
    // MARK: - Delegate
    
    override func setDelegate() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }

}

// MARK: - DataSource

extension CommingSoonViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CommingSoonCollectionViewCell.identifier, for: indexPath) as? CommingSoonCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.dataBind(itemList[indexPath.row])
        return cell
    }
}

extension CommingSoonViewController: UICollectionViewDelegate {
    
}
