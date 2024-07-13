//
//  ContentView.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 20/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationView()
                DragSectionView()
                RotationSectionView()
                GeneralGestureSectionView()
            }
            .navigationTitle("Gestures")
        }
    }
}

#Preview {
    ContentView()
}
