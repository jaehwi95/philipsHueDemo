//
//  CheckBridgeIPAddressView.swift
//  philipsHueDemo
//
//  Created by Jaehwi Kim on 6/9/24.
//

import SwiftUI
import Combine

struct CheckBridgeIPAddressView: View {
    @ObservedObject var viewModel: CheckBridgeIPAddressViewModel
    @EnvironmentObject var router: Router
    
    var body: some View {
        self.contentView
    }
    
    @ViewBuilder
    private var contentView: some View {
        VStack {
            Text("Please Check bridge IP Address")
            Link("Check", destination: URL(string: "https://discovery.meethue.com")!)
            TextField("", text: $viewModel.ipAddress)
            Button(action: {
            
            }, label: {
                Text(viewModel.ipAddress.isEmpty ? "Please Input" : "Yes")
            })
        }
    }
}
