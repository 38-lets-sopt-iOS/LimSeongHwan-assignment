//
//  NewContentSectionView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct NewContentSectionView: View {
    let newContentItem: [NewContentModel]
    var body: some View {
        VStack {
            SectionHeaderView(mainTitle: "방금 막 도착한 신상 컨텐츠", subTitle: "예능부터 드라마까지!")
                .padding(.leading, 24)
            NewContentScrollView(newContentItem: newContentItem)
        }
    }
}
