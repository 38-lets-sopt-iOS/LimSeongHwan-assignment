//
//  SubscribeView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct SubscribeView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView {
                VStack(spacing: 0) {
                    MainPosterScrollView(posters: MainPoster.dummy)
                        .padding(.top, 28)
                        .padding(.bottom, 34)
                    NewContentSectionView(newContentItem: NewContentModel.dummy)
                        .padding(.bottom, 45)
                    WatgorijeumSectionView()
                        .padding(.bottom, 43)
                    CommingSoonSectionView()
                        .padding(.bottom, 45)
                    WatchaPartySectionView()
                }
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    SubscribeView()
        .preferredColorScheme(.dark)
}
