//
//  CheckHueAppInstallView.swift
//  philipsHueDemo
//
//  Created by Jaehwi Kim on 6/9/24.
//

import SwiftUI
import Combine

struct CheckHueAppInstallView: View {
    @ObservedObject var viewModel: CheckHueAppInstallViewModel
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            HueCheckLabelView(isHueAppInstalled: viewModel.isHueAppInstalled)
            InstallOrNextButtonView(isHueAppInstalled: viewModel.isHueAppInstalled)
        }
        .onAppear {
            viewModel.getCheckHueAppInstalled()
        }
        .navigationTitle("Check Hue App Install")
    }
    
    @ViewBuilder
    private func HueCheckLabelView(isHueAppInstalled: Bool) -> some View {
        Text(isHueAppInstalled ? "Hue App Installed" : "Hue App Not Installed")
    }
    
    @ViewBuilder
    private func InstallOrNextButtonView(isHueAppInstalled: Bool) -> some View {
        Button(action: {
            if isHueAppInstalled {
                router.navigateTo(.checkControlLightsView)
            } else {
                
            }
        }, label: {
            Text(isHueAppInstalled ? "Next" : "Install Hue App")
        })
    }
}
