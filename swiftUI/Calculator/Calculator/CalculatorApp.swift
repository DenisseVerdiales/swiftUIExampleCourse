//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Cynthia Denisse Verdiales Moreno on 10/04/24.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            if UIDevice.isIpad {
                Text("iPad")
            } else {
                MainCalculatorView()
            }
        }
    }
}
