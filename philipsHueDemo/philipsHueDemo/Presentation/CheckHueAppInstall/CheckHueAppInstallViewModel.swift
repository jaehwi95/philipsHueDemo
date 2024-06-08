//
//  CheckHueAppInstallViewModel.swift
//  philipsHueDemo
//
//  Created by Jaehwi Kim on 6/9/24.
//

import SwiftUI
import Combine

class CheckHueAppInstallViewModel: ObservableObject {
    @Published var isHueAppInstalled: Bool = false
}

extension CheckHueAppInstallViewModel {
    func getCheckHueAppInstalled() {
        if let url = URL(string: "hue2://") {
            if UIApplication.shared.canOpenURL(url) {
                isHueAppInstalled = true
            } else {
                isHueAppInstalled = false
            }
        } else {
            isHueAppInstalled = false
        }
    }
}
