//
//  MagnificationView.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 23/03/24.
//

import SwiftUI

struct MagnificationView: View {
    @State private var scaleFacotr: CGFloat = 1.0
    
    var body: some View {
        Section(content: {
            NavigationLink(#"Magnification Gesture "Go Back""#,
                destination: {
                MagnificationBounceBackView()
            })
            NavigationLink(#"Magnification Gesture "Stay Still""#,
                destination: {
                MagnificationDemo()
            })
            NavigationLink(destination: {
                MagnificationStoreStateView(scaleFactor: $scaleFacotr)
            }, label: {
                VStack(alignment: .leading) {
                    Text("Magnification Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                }
            })
            NavigationLink("Magnification Gesture",
                destination: {
                Text("Example 3")
            })
        }, header: {
            Text("Magnification Gesture Demo")
        })
        
        
    }
}

#Preview {
    Form {
        MagnificationView()
    }
}
