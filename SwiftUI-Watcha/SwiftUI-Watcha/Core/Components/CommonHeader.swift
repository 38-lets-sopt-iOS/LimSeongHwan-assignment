//
//  CommonHeader.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct CommonHeader: View {
    var body: some View {
        HStack {
            Text("구독")
                .font(.head1)
                .foregroundStyle(.watchaWhite)
            Spacer()

            HStack(spacing: 20) {
                Button(action: {}) {
                    Image("Video")
                }
                Button(action: {}) {
                    Image("Notification")
                }
                Button(action: {}) {
                    Image("Profile")
                }
            }
            .tint(.watchaWhite)
        }
        .padding(.trailing, 30)
        .padding(.leading, 28)
        .frame(maxWidth: .infinity)
        .frame(height: 56)
    }
}

#Preview {
    CommonHeader()
        .preferredColorScheme(.dark)
}
