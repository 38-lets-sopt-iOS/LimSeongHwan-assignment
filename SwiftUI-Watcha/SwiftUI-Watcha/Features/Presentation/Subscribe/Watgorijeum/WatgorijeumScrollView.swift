//
//  WatgorijeumScrollView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct WatgorijeumScrollView: View {
    let items: [WatgorijeumModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 13) {
                ForEach(items) { item in
                    WatgorijeumCardView(item: item)
                }
            }
            .padding(.horizontal, 14)
        }
    }
}

#Preview {
    WatgorijeumScrollView(items: WatgorijeumModel.dummy)
}
