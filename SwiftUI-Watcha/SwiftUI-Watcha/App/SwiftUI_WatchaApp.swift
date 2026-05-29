//
//  SwiftUI_WatchaApp.swift
//  SwiftUI-Watcha
//
//  Created by 성환 on 5/28/26.
//

import SwiftUI

@main
struct SwiftUI_WatchaApp: App {
    @State private var showMain = false

    var body: some Scene {
        WindowGroup {
            if showMain {
                RootView()
            } else {
                WelcomeView {
                    showMain = true
                }
            }
        }
    }
}
