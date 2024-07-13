//
//  ContentView.swift
//  DragImageFromAbove
//
//  Created by Cynthia Denisse Verdiales Moreno on 27/03/24.
//

import SwiftUI

struct ContentView: View {
    @State var images: [[ImageModel]] = [
    [
        .init(name: "person", color: .red),
        .init(name: "xmark", color: .green),
        .init(name: "circle.fill", color: .blue)
    ],
    [
        .init(name: "circle.fill", color: .red),
        .init(name: "square.fill", color: .green),
        .init(name: "bolt.fill", color: .blue)
    ],
    [
        .init(name: "menucard.fill", color: .red),
        .init(name: "figure.walk", color: .green),
        .init(name: "person", color: .blue)
    ]
    ]
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [.blue, .purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .opacity(0.3)
            .ignoresSafeArea()
            VStack {
                Text("Drag image demo")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .zIndex(100)
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                    Spacer()
                Grid {
                    ForEach(0..<images.count, id: \.self) { i in
                        GridRow {
                            ForEach(0..<images[i].count, id: \.self) { j in
                                ImageView(image: $images[i][j])
                                    
                            }
                        }
                    }
                }
                Spacer()
                Button(action: {
                    withAnimation {
                        images = images.shuffled()
                        for i in 0..<images.count {
                            images[i] = images[i].shuffled()
                        }
                    }
                }, label: {
                    Text("Shuffle")
                        .foregroundColor(.cyan)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(
                                    .black
                                        .opacity(0.9))
                                .shadow(radius: 5)
                        )
                })
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
