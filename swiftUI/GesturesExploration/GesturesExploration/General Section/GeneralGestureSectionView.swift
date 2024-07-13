//
//  GeneralGestureSectionView.swift
//  GesturesExploration
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/03/24.
//

import SwiftUI

struct GeneralGestureSectionView: View {
    
    var body: some View {
        Section(content: {
            NavigationLink("General Gesture",
            destination: {
                AllGesturesDemo()
            })
        }, header: {
            Text("General Gesture Demo")
        })
       
        
    }
}
#Preview {
    Form {
        GeneralGestureSectionView()
    }
}
