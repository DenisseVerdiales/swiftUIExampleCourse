//
//  RotationGestureBounceBack.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/03/24.
//

import SwiftUI

struct RotationGestureBounceBack: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello",
                bgColor: .black,
                fgColor: .orange,
                radius: 10)
            .rotationEffect(Angle(degrees: rotation))
            .gesture(
                RotationGesture()
                    .onChanged{value in
                        rotation = value.degrees
                    }
                    .onEnded{value in
                        withAnimation(.spring()) {
                            rotation = 0
                        }
                    }
            )
            .navigationTitle("Rotation Demo Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RotationGestureBounceBack()
}
