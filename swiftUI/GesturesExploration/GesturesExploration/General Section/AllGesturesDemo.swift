//
//  AllGesturesDemo.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/03/24.
//

import SwiftUI

struct AllGesturesDemo: View {
    @State private var offset: CGSize = .zero
    @State private var rotation = 0.0
    @State private var scale = 1.0
    
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello",
                bgColor: .black,
                fgColor: .orange,
                radius: 10)
            .offset(offset)
            .rotationEffect(Angle(degrees: rotation))
        .scaleEffect(scale)
        .gesture(
            SimultaneousGesture( SimultaneousGesture(
                DragGesture()
                    .onChanged { value in
                        offset = value.translation
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            offset = .zero
                        }
                    }
                ,
                MagnificationGesture()
                    .onChanged { value in
                        scale = value
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            scale = 1.0
                        }
                    }
            ), RotationGesture()
                .onChanged { value in
                    rotation = value.degrees
                }
                .onEnded { _ in
                    withAnimation(.spring()) {
                        rotation = 0.0
                    }
                }
            )
           
        )
        .navigationTitle("Rotate, Drag, Magnify")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AllGesturesDemo()
}
