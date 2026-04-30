//
//  NewContentViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 5/1/26.
//

import UIKit
import SnapKit
import Then

class NewContentViewController: BaseUIViewController {
    // MARK: - 프로퍼티
    
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    private var itemList = NewContentItemModel.dummy()

    final let inset = UIEdgeInsets(top: 0, left: 27, bottom: 0, right: 27)
    final let interItemSpacing: CGFloat = 13
    final let cellHeight: CGFloat = 180
    
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
    
    // MARK: - 레이아웃
    
    override func setLayout() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func setCollectionLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        let screenWidth = view.bounds.width
        let cellWidth = screenWidth - inset.left - inset.right - interItemSpacing
        
        flowLayout.scrollDirection = .horizontal
        collectionView.showsHorizontalScrollIndicator = false
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        flowLayout.minimumInteritemSpacing = interItemSpacing
        collectionView.setCollectionViewLayout(flowLayout, animated: true)
    }
    
    // MARK: - Delegate

    override func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    // MARK: - Register

    override func register() {
        collectionView.register(NewContentCollectionViewCell.self, forCellWithReuseIdentifier: NewContentCollectionViewCell.identifier)
    }
}

// MARK: - DataSource

extension NewContentViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewContentCollectionViewCell.identifier, for: indexPath) as? NewContentCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.dataBind(itemList[indexPath.row])
        return cell
    }
}

extension NewContentViewController: UICollectionViewDelegate {}
