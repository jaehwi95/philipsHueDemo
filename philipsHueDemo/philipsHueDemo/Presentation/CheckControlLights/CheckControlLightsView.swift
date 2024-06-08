//
//  CheckControlLightsView.swift
//  philipsHueDemo
//
//  Created by Jaehwi Kim on 6/9/24.
//

import SwiftUI
import Combine

struct CheckControlLightsView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Please Check if you can control lights with Hue App")
            Button(action: {
                router.navigateTo(.checkBridgeIPAddressView)
            }, label: {
                Text("Yes")
            })
        }
        .navigationTitle("Check Control Lights")
    }
}
