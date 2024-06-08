//
//  ViewModel.swift
//  philipsHueDemo
//
//  Created by Jaehwi Kim on 6/9/24.
//

import SwiftUI
import Combine

protocol ViewModel: ObservableObject {
    associatedtype State
    associatedtype Action
    
    var state: State { get }
    
    func action(_ action: Action)
}
