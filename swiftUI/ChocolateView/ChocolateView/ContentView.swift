//
//  ContentView.swift
//  ChocolateView
//
//  Created by Cynthia Denisse Verdiales Moreno on 03/04/24.
//

import SwiftUI

struct ContentView: View {
    
   @State var angle = 0.0
    @State var opacity = 0.0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.7)
                .ignoresSafeArea()
                .mask( 
                    ChocolateViewEffect(text: " Chocolate ", wordsPerLine: 100, rows: 100, angle: angle, spacing: 20.0, font: .largeTitle)
                    .opacity(opacity)
                )
            
        }
        .onAppear {
            withAnimation(.linear(duration: 2)) {
                angle = -50.0
                opacity = 0.7
            }
        }
      
    }
}

#Preview {
    ContentView()
}
