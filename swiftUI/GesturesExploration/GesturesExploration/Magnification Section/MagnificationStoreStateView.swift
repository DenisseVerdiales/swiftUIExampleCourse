//
//  MagnificationStoreStateView.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 23/03/24.
//

import SwiftUI

struct MagnificationStoreStateView: View {
    @State private var changeScaleFactor: CGFloat = 0.0
    @Binding var scaleFactor: CGFloat
    
    var sumScaleFactor: CGFloat {
        changeScaleFactor + scaleFactor
    }
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                NiceTextView(
                    text: "Hello",
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10)
                .scaleEffect(sumScaleFactor)
                .gesture(
                    MagnificationGesture()
                        .onChanged{value in
                            withAnimation(.spring()) {
                                changeScaleFactor = value - 1
                            }
                        }
                        .onEnded {value in
                            withAnimation(.spring()) {
                                scaleFactor += changeScaleFactor
                                
                                changeScaleFactor = 0
                            }
                        }
                        
                )
                Spacer()
            }
            .navigationTitle("Magnify and store state")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationStoreStateView(scaleFactor: .constant(1))
}
