//
//  MainHotKeysView.swift
//  Brevis
//
//  Created by Cynthia Denisse Verdiales Moreno on 25/04/24.
//

import SwiftUI

struct MainHotKeysView: View {
    @State private var searchQuery = ""
    var vm: HotKeyCategoryViewModel = HotKeyCategoryViewModel()
    let listStyle = Theme.listStyle
    
    var body: some View {
        NavigationStack {
            Form {
                List(vm.hotKeyCategoryModels) { hotKeyCategory in
                    HotKeySectionView(hotKeyCategoryName: hotKeyCategory.name, hotKeyModels: hotKeyCategory.hotkeyModels, searchQuery: searchQuery)
                }
                .listStyle(listStyle)
            }
            .navigationTitle("Xcode Hotkeys")
            .searchable(text: $searchQuery, prompt: "Search...")
           
            KeySymbolView()
        }
        .frame(minWidth: Theme.frameWidth, minHeight: Theme.frameHeight)
    }
}

#Preview {
    MainHotKeysView()
}
