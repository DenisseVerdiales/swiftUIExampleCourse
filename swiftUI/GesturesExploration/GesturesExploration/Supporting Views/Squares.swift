//
//  Squares.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 20/03/24.
//

import SwiftUI

struct Squares: View {
    let opacity: CGFloat
    
    init(opacity: CGFloat = 0.8) {
        self.opacity = opacity
    }
    
    var body: some View {
        Grid {
            SquaresRow(colors: [.green, .blue, .pink])
            SquaresRow(colors: [.purple, .indigo, .gray])
            SquaresRow(colors: [.orange, .blue, .cyan])
        }
        .opacity(opacity)
    }
}

#Preview {
    Squares()
}
