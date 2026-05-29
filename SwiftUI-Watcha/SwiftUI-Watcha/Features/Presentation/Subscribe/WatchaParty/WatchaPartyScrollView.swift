//
//  WatchaPartyScrollView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct WatchaPartyScrollView: View {
    let item: [WatchaPartyModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(item) { item in
                    WatchaPartyCardView(item: item)
                }
            }
            .padding(.horizontal, 17)
        }
    }
}

#Preview {
    WatchaPartyScrollView(item: WatchaPartyModel.dummy)
}
