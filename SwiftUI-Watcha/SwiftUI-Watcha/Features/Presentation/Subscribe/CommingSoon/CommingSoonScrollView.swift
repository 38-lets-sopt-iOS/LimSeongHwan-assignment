//
//  CommingSoonScrollView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct CommingSoonScrollView: View {
    let items: [CommingSoonModel]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 13) {
                ForEach(items) { item in
                    CommingSoonCardView(item: item)
                }
            }
            .padding(.horizontal, 14)
        }
    }
}

#Preview {
    CommingSoonScrollView(items: CommingSoonModel.dummy)
}
