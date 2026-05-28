//
//  RootView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct RootView: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .gray500
    }
    
    var body: some View {
        TabView {
            SubscribeView()
                .tabItem {
                    Label("구독", image: "Watcha")
                }
            PurchaseView()
                .tabItem {
                    Label("개별 구매", image: "Category")
                }
            WebtoonView()
                .tabItem {
                    Label("웹툰", image: "Wallet")
                }
            SearchView()
                .tabItem {
                    Label("찾기", image: "Search")
                }
            LibraryView()
                .tabItem {
                    Label("보관함", image: "Folder")
                }
        }
        .tint(.watchaWhite)
        .toolbarBackground(Color.black, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
        .toolbarColorScheme(.dark, for: .tabBar)
    }
}

#Preview {
    RootView()
}
