//
//  CommingSoonSectionView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct CommingSoonSectionView: View {
    let commingSoonItem: [CommingSoonModel] = CommingSoonModel.dummy

    var body: some View {
        VStack(alignment: .leading) {
            SectionHeaderView(mainTitle: "공개 예정 콘텐츠", showMoreButton: true)
                .padding(EdgeInsets(top: 0, leading: 22, bottom: 15, trailing: 22))
            CommingSoonScrollView(items: commingSoonItem)
        }
    }
}

#Preview {
    CommingSoonSectionView()
        .preferredColorScheme(.dark)
}
