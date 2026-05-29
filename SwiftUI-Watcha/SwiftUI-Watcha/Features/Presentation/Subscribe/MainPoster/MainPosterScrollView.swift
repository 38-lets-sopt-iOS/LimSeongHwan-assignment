//
//  MainPosterScrollView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct MainPosterScrollView: View {
    let posters: [MainPoster]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(posters) { poster in
                    MainPosterCardView(poster: poster)
                }
            }
            .padding(.horizontal, 51)
        }
    }
}

#Preview {
    MainPosterScrollView(posters: MainPoster.dummy)
        .preferredColorScheme(.dark)
}
