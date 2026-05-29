//
//  WelcomeView.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/29/26.
//

import SwiftUI

struct WelcomeView: View {
    var onMainTapped: () -> Void = {}

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {
                Image(.watchaLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 319, height: 167)
                    .foregroundStyle(.watchaPink)
                    .padding(.top, 42)

                VStack(spacing: 0) {
                    Text("성환님")
                        .font(.head2)
                        .foregroundStyle(.white)
                    Text("가입을 환영합니다!")
                        .font(.head2)
                        .foregroundStyle(.white)
                }
                .multilineTextAlignment(.center)
                .padding(.top, 54)

                Spacer()

                Button(action: onMainTapped) {
                    Text("메인으로")
                        .font(.medium)
                        .foregroundStyle(.white)
                        .frame(width: 331, height: 56)
                        .background(.watchaPink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.bottom, 13)
            }
        }
    }
}

#Preview {
    WelcomeView()
        .preferredColorScheme(.dark)
}
