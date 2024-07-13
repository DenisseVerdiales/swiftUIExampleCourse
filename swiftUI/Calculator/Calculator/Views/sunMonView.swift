//
//  sunMonView.swift
//  Calculator
//
//  Created by Cynthia Denisse Verdiales Moreno on 10/04/24.
//

import SwiftUI

struct sunMonView: View {
    var lightMode: Bool
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "sun.min")
                .foregroundColor(lightMode ? sunOrMoonSelected : sunOrMoonNotSelected)
            
            Image(systemName: "moon")
                .foregroundColor(lightMode ? sunOrMoonNotSelected : sunOrMoonSelected)
        }
        .imageScale(.large)
        .font(UIDevice.isIpad ? .title : .body)
        .fontWeight(UIDevice.isIpad ? .semibold : .regular)
        .padding()
            .background(secondaryBackground)
            .cornerRadius(20)
    }
}

#Preview {
    VStack {
        sunMonView(lightMode: true)
    }
}
