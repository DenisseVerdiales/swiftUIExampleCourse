//
//  HotKeySectionView.swift
//  Brevis
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/04/24.
//

import SwiftUI

struct HotKeySectionView: View {
    let hotKeyCategoryName: String
    let hotKeyModels: [HotKeyModel]
    let searchQuery: String
    let sectionHeaderFont: Font = Theme.sectionHeaderFont
    let fontWeight: Font.Weight = Theme.fontWeight
    let subtitleColor: Color = Theme.subtitleColor
    
    //TODO: Filter according to 'searchQuery'
    var filteredHotKeyModels: [HotKeyModel] {
        hotKeyModels
    }
    
    var body: some View {
        if !filteredHotKeyModels.isEmpty {
            Section {
                ForEach(filteredHotKeyModels){ hotKeyModel in
                    HotKeyRow(hotKeyModel: hotKeyModel, searchQuery: searchQuery)
                }
            } header: {
                Text(hotKeyCategoryName)
                    .font(sectionHeaderFont)
                    .fontWeight(fontWeight)
                    .foregroundStyle(subtitleColor)
            }
        }
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Form {
        HotKeySectionView(hotKeyCategoryName: "Navigation", hotKeyModels:
        [
            .init(modifiers: [.command], character: "1", text: "Project"),
            .init(modifiers: [.command], character: "2", text: "Source Control")
            
        ], searchQuery: "")
    }
}
