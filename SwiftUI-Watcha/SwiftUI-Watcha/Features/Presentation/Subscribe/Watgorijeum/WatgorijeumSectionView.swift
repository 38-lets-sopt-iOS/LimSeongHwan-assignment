//
//  WatgorijeumSectionView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct WatgorijeumSectionView: View {
    let watgorijeumItem: [WatgorijeumModel] = WatgorijeumModel.dummy
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(.watgorijeum)
                .foregroundStyle(.watchaWhite)
                .padding(EdgeInsets(top: 0, leading: 24, bottom: 8.5, trailing: 0))
            SectionHeaderView(subTitle: "예능부터 드라마까지!", showMoreButton: true)
                .padding(EdgeInsets(top: 0, leading: 26, bottom: 7, trailing: 23))
            WatgorijeumScrollView(items: watgorijeumItem)
        }
    }
}

#Preview {
    WatgorijeumSectionView()
        .preferredColorScheme(.dark)
}
