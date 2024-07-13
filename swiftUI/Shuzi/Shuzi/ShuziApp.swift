//
//  ShuziApp.swift
//  Shuzi
//
//  Created by Cynthia Denisse Verdiales Moreno on 20/05/24.
//

import SwiftUI

@main
struct ShuziApp: App {
    @State private var gVM: GameViewModel = GameViewModel()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(gVM)
        }
    }
}
