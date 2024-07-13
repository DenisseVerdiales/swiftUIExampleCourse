//
//  ContentView.swift
//  Shuzi
//
//  Created by Cynthia Denisse Verdiales Moreno on 20/05/24.
//

import SwiftUI

struct MainView: View {
    @Environment(GameViewModel.self) var gVM
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        Button("Joy", action: { gVM.randoExpressionOfJoy() })
        .padding()
        Button("Incorrect", action: { gVM.incorrectSound() })
    }
}

#Preview {
    MainView()
        .environment(GameViewModel())
}
