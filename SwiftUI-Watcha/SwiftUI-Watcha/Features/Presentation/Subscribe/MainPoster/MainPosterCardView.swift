//
//  MainPosterCardView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct MainPosterCardView: View {
    let poster: MainPoster

    var body: some View {
        Image(poster.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 273, height: 403)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    MainPosterCardView(poster: MainPoster.dummy[0])
}
