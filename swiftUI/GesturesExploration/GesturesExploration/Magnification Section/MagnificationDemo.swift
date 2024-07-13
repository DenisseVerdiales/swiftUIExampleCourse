//
//  MagnificationDemo.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 23/03/24.
//

import SwiftUI

struct MagnificationDemo: View {
    @State private var scaleFactor: CGFloat = 1.0
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                NiceTextView(
                    text: "Hello",
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10)
                .scaleEffect(scaleFactor)
                .gesture(
                    MagnificationGesture()
                        .onChanged{value in
                            withAnimation(.spring()) {
                                scaleFactor = value
                            }
                        }
                        
                )
                Spacer()
            }
            .navigationTitle("Magnify and stay Still")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationDemo()
}
