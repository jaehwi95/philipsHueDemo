//
//  RootApp.swift
//  RootApp
//
//  Created by Jaehwi Kim on 6/8/24.
//

import SwiftUI

@main
struct RootApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView {
                CheckHueAppInstallView(viewModel: .init())
            }
        }
    }
}
