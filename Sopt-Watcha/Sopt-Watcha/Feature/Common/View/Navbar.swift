//
//  Navbar.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit

final class Navbar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setViewControllers()
    }

    private func setUI() {
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.selected.iconColor = .watchaWhite
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.font: UIFont.body2, .foregroundColor: UIColor.watchaWhite]
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.font: UIFont.body2, .foregroundColor: UIColor.gray500]
        tabBar.standardAppearance = appearance
        tabBar.backgroundColor = .watchaBlack
        tabBar.unselectedItemTintColor = .gray500
    }
    
    private func setViewControllers() {
        let subscribeVC = SubscribeViewController()
        let purchseVC = PurchaseViewController()
        let webtoonVC = WebtoonViewController()
        let searchVC = SearchViewController()
        let storageVC = StorageViewController()
        
        subscribeVC.tabBarItem = UITabBarItem(title: "구독", image: .subscribeIcon, selectedImage: .subscribeIcon)
        purchseVC.tabBarItem = UITabBarItem(title: "개별 구매", image: .purchaseIcon, selectedImage: .purchaseIconSelect)
        webtoonVC.tabBarItem = UITabBarItem(title: "웹툰", image: .webtoonIcon, selectedImage: .webtoonIconSelect)
        searchVC.tabBarItem = UITabBarItem(title: "찾기", image: .searchIcon, selectedImage: .searchIconSelect)
        storageVC.tabBarItem = UITabBarItem(title: "보관함", image: .storageIcon, selectedImage: .storageIconSelect)
        
        viewControllers = [subscribeVC, purchseVC, webtoonVC, searchVC, storageVC]
    }
}
