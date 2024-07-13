//
//  ContentView.swift
//  Preview
//
//  Created by Cynthia Denisse Verdiales Moreno on 10/03/24.
//

import SwiftUI

struct ContentView: View {
    let name = "Sophia"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Image(systemName: "trash")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! - \(name)")
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
