//
//  CommingSoonCardView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct CommingSoonCardView: View {
    let item: CommingSoonModel

    var body: some View {
        Image(item.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 103, height: 153)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    CommingSoonCardView(item: CommingSoonModel.dummy[0])
}
