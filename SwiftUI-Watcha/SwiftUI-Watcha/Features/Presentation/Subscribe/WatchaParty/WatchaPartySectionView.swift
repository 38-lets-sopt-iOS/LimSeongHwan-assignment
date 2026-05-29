//
//  WatchaPartySectionView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct WatchaPartySectionView: View {
    let watchapartyItem: [WatchaPartyModel] = WatchaPartyModel.dummy
    
    var body: some View {
        VStack {
            SectionHeaderView(mainTitle: "왓챠 파티", showMoreButton: true)
                .padding(.leading, 22)
            WatchaPartyScrollView(item: watchapartyItem)
        }
    }
}

#Preview {
    WatchaPartySectionView()
}
