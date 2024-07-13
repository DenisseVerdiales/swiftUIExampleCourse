//
//  RotationSectionView.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/03/24.
//

import SwiftUI

struct RotationSectionView: View {
    @State private var rotation: Double = 0.0
    var body: some View {
        Section(content: {
            NavigationLink(#"Rotate Gesture "Go Back""#,
            destination: {
                RotationGestureBounceBack()
            })
            
            NavigationLink(#"Rtate Gesture "Stay Still""#,
            destination: {
                RotateGestureView()
            })
            
            NavigationLink(destination: {
                RotateGestureStoreState(rotation: $rotation)
            }, label: {
                VStack(alignment: .leading) {
                    Text("Rotate Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                }
            })
        }, header: {
            Text("Rotate Gesture Demo")
        })
    }
}
#Preview {
    RotationSectionView()
    
}
