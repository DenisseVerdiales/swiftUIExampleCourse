//
//  ContentView.swift
//  firstApp
//
//  Created by Cynthia Denisse Verdiales Moreno on 10/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.largeTitle)
                .bold()
                .padding()
                .background(Color.gray)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
