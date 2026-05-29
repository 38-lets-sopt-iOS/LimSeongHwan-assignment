//
//  NewContentCardView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct NewContentCardView: View {
    let newContentItem: NewContentModel
    
    var body: some View {
        Image(newContentItem.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 321, height: 180)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    NewContentCardView(newContentItem: NewContentModel.dummy[0])
}
