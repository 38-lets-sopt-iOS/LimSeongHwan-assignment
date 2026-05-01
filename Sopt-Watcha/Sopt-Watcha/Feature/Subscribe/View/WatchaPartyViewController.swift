//
//  WatchaPartyViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

class WatchaPartyViewController: BaseUIViewController {
    // MARK: - 프로퍼티
    
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    private let itemList = WatchaPartyItemModel.dummy()
    
    final let inset = UIEdgeInsets(top: 0, left: 17, bottom: 0, right: 0)
    final let interItemSpacing: CGFloat = 12
    final let cellWidth: CGFloat = 196
    final let cellHeight: CGFloat = 185
    
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
        collectionView.register(WatchaPartyCollectionViewCell.self, forCellWithReuseIdentifier: WatchaPartyCollectionViewCell.identifier)
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

extension WatchaPartyViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WatchaPartyCollectionViewCell.identifier, for: indexPath) as? WatchaPartyCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.dataBind(itemList[indexPath.row])
        return cell
    }
}

extension WatchaPartyViewController: UICollectionViewDelegate {
    
}

