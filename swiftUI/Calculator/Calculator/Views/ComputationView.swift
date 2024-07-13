//
//  ComputationView.swift
//  Calculator
//
//  Created by Cynthia Denisse Verdiales Moreno on 10/04/24.
//

import SwiftUI

struct ComputationView: View {
    let currentComputation: String
    let mainResult: String
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Spacer()
                Text(currentComputation)
                    .foregroundColor(foregroundDigits)
                    .font(UIDevice.isIpad ? .largeTitle : .body)
                    .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
            HStack {
                Spacer()
                Text(mainResult)
                    .foregroundColor(foregroundDigits)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
            
        }.padding(.horizontal)
    }
}

#Preview {
    ComputationView(currentComputation: "5+1", mainResult: "6")
}
