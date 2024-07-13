//
//  HotKeyCategoryModel.swift
//  Brevis
//
//  Created by Cynthia Denisse Verdiales Moreno on 24/04/24.
//

import Foundation

struct HotKeyCategoryModel: Identifiable {
    let id = UUID()
    let name: String
    var hotkeyModels: [HotKeyModel]
}
