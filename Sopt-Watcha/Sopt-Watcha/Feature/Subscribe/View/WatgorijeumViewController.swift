//
//  WatgorijeumViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

class WatgorijeumViewController: BaseUIViewController {
    // MARK: - 프로퍼티
    
    private let collectionView = UICollectionView(frame: .zero,collectionViewLayout: UICollectionViewLayout())
    private var itemList = WatgorijeumModel.dummy()
    
    final let inset = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 0)
    final let interItemSpacing: CGFloat = 13
    final let cellWidth: CGFloat = 103
    final let cellHeight: CGFloat = 153
    
    // MARK: - 라이프 사이클
    
    private var isLayoutConfigured = false
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        guard !isLayoutConfigured else { return }
        isLayoutConfigured = true
        setCollectionLayout()
    }
    
    // MARK: - SetUp
    
    override func setUp() {
        collectionView.backgroundColor = .clear
        view.addSubview(collectionView)
    }
    
    // MARK: - Register
    
    override func register() {
        collectionView.register(WatgorijeumCollectionViewCell.self, forCellWithReuseIdentifier: WatgorijeumCollectionViewCell.identifier)
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
        collectionView.setCollectionViewLayout(flowLayout, animated: false)
    }
    
    // MARK: - Delegate
    
    override func setDelegate() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }

}

// MARK: - DataSource

extension WatgorijeumViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WatgorijeumCollectionViewCell.identifier, for: indexPath) as? WatgorijeumCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.dataBind(itemList[indexPath.row])
        return cell
    }
}

extension WatgorijeumViewController: UICollectionViewDelegate {
    
}
