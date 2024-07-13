//
//  NiceTextView.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 20/03/24.
//

import SwiftUI

struct NiceTextView: View {
    let text: String
    let bgColor: Color
    let fgColor: Color
    let radius:CGFloat
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(fgColor)
            .padding()
            .background(bgColor)
            .cornerRadius(radius)
    }
}

#Preview {
    NiceTextView(text: "Hello, World!", bgColor: .black, fgColor: .orange, radius: 10)
}
