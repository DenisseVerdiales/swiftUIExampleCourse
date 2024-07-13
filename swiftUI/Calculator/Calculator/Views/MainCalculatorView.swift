//
//  ContentView.swift
//  Calculator
//
//  Created by Cynthia Denisse Verdiales Moreno on 10/04/24.
//

import SwiftUI

struct MainCalculatorView: View {
    @State var lightMode: Bool = true
    @State var currentComputation: String = ""
    @State var mainResult: String = "0"
    
    var body: some View {
        GeometryReader { geometry in
        
            ZStack {
                primaryBackground.ignoresSafeArea()
                
                VStack {
                    sunMonView(lightMode: lightMode)
                        .onTapGesture {
                            withAnimation {
                                lightMode.toggle()
                            }
                        }
                    Spacer()
                    ComputationView(currentComputation: currentComputation, mainResult: mainResult)
                        .padding(.horizontal , UIDevice.isIpad ? geometry.size.width * 0.1 : 0)
                    Spacer()
                    
                    CalcsButtonsView(currentComputation: $currentComputation, mainResult: $mainResult)
                    
                    if UIDevice.isIpad {
                        Spacer()
                    }
                }
                .padding()
            }
        }
        .environment(\.colorScheme, lightMode ? .light : .dark)
    }
}

#Preview {
    MainCalculatorView()
}
