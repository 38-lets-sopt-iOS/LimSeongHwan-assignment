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
            VStack(spacing: 0) {
                MainPosterScrollView(posters: MainPoster.dummy)
                    .padding(.top, 28)
                Spacer()
            }
        }
    }
}

#Preview {
    SubscribeView()
        .preferredColorScheme(.dark)
}
