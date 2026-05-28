//
//  SectionHeaderView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct SectionHeaderView: View {
    let mainTitle: String?
    let subTitle: String?
    let showMoreButton: Bool

    init(
        mainTitle: String? = nil,
        subTitle: String? = nil,
        showMoreButton: Bool = false,
    ) {
        self.mainTitle = mainTitle
        self.subTitle = subTitle
        self.showMoreButton = showMoreButton
    }

    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 4) {
                if let mainTitle {
                    Text(mainTitle)
                        .font(.head3)
                        .foregroundStyle(.watchaWhite)
                }
                if let subTitle {
                    Text(subTitle)
                        .font(.subHead1)
                        .foregroundStyle(.watchaGray)
                }
            }

            Spacer()

            if showMoreButton {
                Button(action: {}) {
                    Text("더보기")
                        .font(.body1)
                        .foregroundStyle(.watchaGray)
                }
            }
        }
        .padding(.horizontal, 28)
    }
}

#Preview {
    VStack(spacing: 24) {
        SectionHeaderView(
            mainTitle: "방금 막 도착한 신상 컨텐츠",
            subTitle: "예능부터 드라마까지!",
            showMoreButton: true
        )
        SectionHeaderView(
            mainTitle: "방금 막 도착한 신상 컨텐츠"
        )
        SectionHeaderView(
            mainTitle: "방금 막 도착한 신상 컨텐츠",
            showMoreButton: true
        )
    }
    .background(.black)
    .preferredColorScheme(.dark)
}
