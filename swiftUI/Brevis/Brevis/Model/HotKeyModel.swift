//
//  HotKeyModel.swift
//  Brevis
//
//  Created by Cynthia Denisse Verdiales Moreno on 24/04/24.
//

import Foundation

struct HotKeyModel: Identifiable {
    let id = UUID()
    let modifiers: [Modifier]
    let character: String
    let text: String
    
    var description: String {
        var result = ""
        for modifier in modifiers {
            result += modifier.rawValue
        }
        result +=  "\(character.capitalized)"
       return result
    }
}
