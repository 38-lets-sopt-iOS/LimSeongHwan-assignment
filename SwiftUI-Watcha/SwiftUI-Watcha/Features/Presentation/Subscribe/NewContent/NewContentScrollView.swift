//
//  NewContentScrollView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct NewContentScrollView: View {
    let newContentItem: [NewContentModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(newContentItem) { item in
                    NewContentCardView(newContentItem: item)
                }
            }
            .padding(.horizontal, 27)
        }
    }
}

#Preview {
    NewContentScrollView(newContentItem: NewContentModel.dummy)
}
