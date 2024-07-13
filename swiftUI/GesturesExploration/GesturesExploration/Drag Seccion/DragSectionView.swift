//
//  DragSectionView.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/03/24.
//

import SwiftUI

struct DragSectionView: View {
    @State private var scaleFactor: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    var body: some View {
        Section(content: {
            NavigationLink(#"Drag Gesture "Go Back""#,
                           destination: {
                DragGestureBounceBack()
            })
            
            NavigationLink(#"Drag Gesture "Stay Still""#,
                           destination: {
                DragGestureView()
            })
            
            NavigationLink(destination: {
                DragGestureStoreState(endOffset: $offset)
                
            }, label: {
                VStack(alignment: .leading) {
                    Text("Drag Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                }
            })
        },
        header: {
           Text("Drag Gesture Demo")
       })
    }
}

#Preview {
    DragSectionView()
}
