//
//  DragGestureStoreState.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/03/24.
//

import SwiftUI

struct DragGestureStoreState: View {
    @State private var currentOffset: CGSize = .zero
    @Binding var endOffset: CGSize
    
    var offset: CGSize {
        CGSize(
            width: currentOffset.width + endOffset.width,
            height: currentOffset.height + endOffset.height
        )
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Squares()
                Spacer()
                NiceTextView(
                    text: "Hello ",
                    bgColor: .black.opacity(0.7),
                    fgColor: .orange.opacity(0.85),
                    radius: 10)
                .offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged{value in
                            withAnimation(.spring()) {
                                currentOffset = value.translation
                            }
                        }
                        .onEnded{ _ in
                            withAnimation(.spring()) {
                                endOffset = CGSize(
                                    width: currentOffset.width + endOffset.width,
                                    height: currentOffset.height + endOffset.height)
                                
                                currentOffset = .zero
                            }
                        }
                )
                .onTapGesture {
                    withAnimation(.spring()) {
                        currentOffset = .zero
                        endOffset = .zero
                    }
                }
                Spacer()
            }
            .navigationTitle("Drag and Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    DragGestureStoreState(endOffset: .constant(.zero))
}
