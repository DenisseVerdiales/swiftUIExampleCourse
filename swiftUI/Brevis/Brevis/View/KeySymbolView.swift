//
//  KeySymbolView.swift
//  Brevis
//
//  Created by Cynthia Denisse Verdiales Moreno on 01/05/24.
//

import SwiftUI

struct KeySymbolView: View {
    
    var body: some View {
        let midIndex = Modifier.allCases.count / 2 + 1
        HStack {
            KeySymbolViewColumn(loweIndex: 0, upperIndex: midIndex)
            KeySymbolViewColumn(loweIndex: midIndex, upperIndex: Modifier.allCases.count)
        }
    }
}

struct KeySymbolViewColumn: View {
    let loweIndex: Int
    let upperIndex: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(loweIndex..<upperIndex, id: \.self) { i in
                KeyValueRow(modifier: Modifier.allCases[i])
            }
        }
        .frame(maxWidth: .infinity)
    }

}

struct KeyValueRow: View {
    let modifier: Modifier
    let modifierFont: Font = .body
    
    var body: some View {
        Text("\(modifier.rawValue) = \(modifier.description)")
            .font(modifierFont)
    }
}
#Preview {
    KeySymbolView()
}
