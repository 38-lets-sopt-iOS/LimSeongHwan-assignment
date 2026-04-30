//
//  BannerViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit
import SnapKit
import Then

class BannerViewController: UIViewController {
    // MARK: - 프로퍼티

    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    private var itemList = BannerModel.dummy()
    
    final let inset = UIEdgeInsets(top: 0, left: 51, bottom: 0, right: 51)
    final let interItemSpacing: CGFloat = 8
    final let cellHeight: CGFloat = 403
    
    // MARK: - 라이프 사이클

    private var isLayoutConfigured = false

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        register()
        setLayout()
        setDelegate()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        guard !isLayoutConfigured else { return }
        isLayoutConfigured = true
        setCollectionViewLayout()
    }
    
    // MARK: - 레이아웃
    
    private func setUp() {
        collectionView.backgroundColor = .clear
        view.addSubview(collectionView)
    }
    
    private func setLayout() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func setDelegate() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    private func setCollectionViewLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        let screenWidth = view.bounds.width
        let cellWidth = screenWidth - inset.left - inset.right - interItemSpacing
        
        flowLayout.scrollDirection = .horizontal
        collectionView.showsHorizontalScrollIndicator = false
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        flowLayout.minimumInteritemSpacing = interItemSpacing
        collectionView.setCollectionViewLayout(flowLayout, animated: true)
    }
    
    private func register() {
        collectionView.register(BannerCollectionViewCell.self, forCellWithReuseIdentifier: BannerCollectionViewCell.identifier)
    }
}

extension BannerViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCollectionViewCell.identifier, for: indexPath) as? BannerCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.dataBind(itemList[indexPath.row])
        return cell
    }
}

extension BannerViewController: UICollectionViewDelegate {
    
}
