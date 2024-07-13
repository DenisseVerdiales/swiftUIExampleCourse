//
//  ChocolateViewEffect.swift
//  ChocolateView
//
//  Created by Cynthia Denisse Verdiales Moreno on 03/04/24.
//

import SwiftUI

struct ChocolateViewEffect: View {
    let text: String
    let wordsPerLine: Int
    let rows: Int
    let angle:CGFloat
    let spacing: CGFloat?
    let font: Font
    
    var repeatedText: String {
        String(repeating: "\(text)", count: wordsPerLine)
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: spacing) {
                ForEach(0 ..< rows, id:\.self) { _ in
                    Text(repeatedText)
                        .fixedSize(horizontal: true, vertical: false)
                        .font(font)
                }
            }
            .rotationEffect(Angle(degrees: angle))
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

#Preview {
    ZStack {
        LinearGradient(colors: [.blue, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.7)
            .ignoresSafeArea()
        
        ChocolateViewEffect(text: " Chocolate ", wordsPerLine: 100, rows: 100, angle: -50.0, spacing: 20, font: .caption)
    }
}
