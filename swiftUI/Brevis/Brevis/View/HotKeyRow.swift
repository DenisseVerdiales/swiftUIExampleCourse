//
//  HotKeyRow.swift
//  Brevis
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/04/24.
//

import SwiftUI

struct HotKeyRow: View {
    let hotKeyModel: HotKeyModel
    let searchQuery: String
    let font: Font = .body
    let fontSecondary: Font = .headline
    var charFound: Bool {
        searchQuery.count == 1 && hotKeyModel.character.lowercased() == searchQuery.lowercased()
    }
    var body: some View {
        VStack (alignment: .leading) { //TODO: Adapt for Mac and iPad
            if charFound {
                Text("🔵")
                    .font(font)
            }
            Text(hotKeyModel.description)
                .font(font)
                .fontWeight(.semibold)
        }
        Text(hotKeyModel.text.capitalized)
            .foregroundStyle(.secondary)
            .font(fontSecondary)
    }
}

#Preview {
    VStack {
        HotKeyRow(hotKeyModel: .init(modifiers: [.command], character: "b", text: "build"), searchQuery: "b")
        HotKeyRow(hotKeyModel: .init(modifiers: [.command], character: "b", text: "build"), searchQuery: "r")
    }
}
