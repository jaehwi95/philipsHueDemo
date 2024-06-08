//
//  Router.swift
//  philipsHueDemo
//
//  Created by Jaehwi Kim on 6/9/24.
//

import SwiftUI

class Router: ObservableObject {
    enum Route: Hashable {
        case checkHueAppInstalledView
        case checkControlLightsView
        case checkBridgeIPAddressView
    }
    
    @Published var path: NavigationPath = NavigationPath()
    
    @ViewBuilder func view(for route: Route) -> some View {
        switch route {
        case .checkHueAppInstalledView:
            CheckHueAppInstallView(viewModel: .init())
        case .checkControlLightsView:
            CheckControlLightsView()
        case .checkBridgeIPAddressView:
            CheckBridgeIPAddressView(viewModel: .init())
        }
    }
    
    func navigateTo(_ route: Route) {
        path.append(route)
    }
    
    func navigateBack() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}
