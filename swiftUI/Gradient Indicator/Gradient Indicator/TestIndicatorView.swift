//
//  TestIndicatorView.swift
//  Gradient Indicator
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/03/24.
//

import SwiftUI

struct TestIndicatorView: View {
    @State private var percentage: CGFloat = 0.7
    var body: some View {
        VStack {
            Text("Gradient Indicator")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            Spacer()
            IndicatorView(width: 200, height: 30, percentage: percentage, color: .gray)
            Spacer()
            Slider(value: $percentage, label: {})
                .padding()
        }
    }
}

#Preview {
    TestIndicatorView()
}
