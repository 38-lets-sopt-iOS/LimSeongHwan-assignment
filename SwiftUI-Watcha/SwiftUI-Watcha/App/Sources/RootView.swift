//
//  RootView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct RootView: View {
    @State private var selectedTab = 0
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = .gray500
    }

    var body: some View {
        VStack(spacing: 0) {
            CommonHeader(title: ["구독", "개별 구매", "웹툰", "찾기", "보관함"][selectedTab])
            TabView(selection: $selectedTab) {
                SubscribeView().tag(0)
                    .tabItem {
                        Label("구독", image: "Watcha")
                    }
                PurchaseView().tag(1)
                    .tabItem {
                        Label("개별 구매", image: "Category")
                    }
                WebtoonView().tag(2)
                    .tabItem {
                        Label("웹툰", image: "Wallet")
                    }
                SearchView().tag(3)
                    .tabItem {
                        Label("찾기", image: "Search")
                    }
                LibraryView().tag(4)
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
}

#Preview {
    RootView()
}
