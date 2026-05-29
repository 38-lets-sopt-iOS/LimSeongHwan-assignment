//
//  WatchaPartyCardView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct WatchaPartyCardView: View {
    let item: WatchaPartyModel

    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .topTrailing) {
                Image(item.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 196, height: 139)
                    .clipped()

                Circle()
                    .fill(Color.watchaWhite)
                    .frame(width: 35, height: 35)
                    .overlay(
                        Image(.notificationBold)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.watchaBlack)
                    )
                    .padding(.top, 7)
                    .padding(.trailing, 5)
            }

            VStack(alignment: .leading, spacing: 6) {
                Text("오늘 \(item.startTime)에 시작")
                    .font(.body1)
                    .foregroundStyle(Color.watchaPink)
                Text("# \(item.movieTitle)")
                    .font(.subHead3)
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 6, leading: 8, bottom: 7, trailing: 0))
        }
        .frame(width: 196)
        .background(Color.gray600)
    }
}

#Preview {
    WatchaPartyCardView(item: WatchaPartyModel.dummy[0])
        .preferredColorScheme(.dark)
}
