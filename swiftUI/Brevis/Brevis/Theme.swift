//
//  Theme.swift
//  Brevis
//
//  Created by Cynthia Denisse Verdiales Moreno on 01/05/24.
//

import Foundation
import SwiftUI

#if os(iOS)
struct Theme {
    static let font: Font = .headline
    static let fontSecondary: Font = .body
    static let fontWeight: Font.Weight = .regular
    static let modifierFont: Font = .headline
    static let frameWidth: CGFloat? = nil
    static let frameHeight: CGFloat? = nil
    static let listStyle = DefaultListStyle()
    static let sectionHeaderFont: Font = .body
    static let hotKeyWidth: CGFloat? = nil
    static let subtitleColor: Color = .red
    
    func layout(isIpad: Bool) -> AnyLayout {
        isIpad ? AnyLayout(VStackLayout(alignment: .leading)):  AnyLayout(HStackLayout())
    }
}
#else
struct Theme {
    static let font: Font = .title
    static let fontSecondary: Font = .title
    static let fontWeight: Font.Weight = .semibold
    static let modifierFont: Font = .title
    static let frameWidth: CGFloat? = 900
    static let frameHeight: CGFloat? = 1000
    static let listStyle = DefaultListStyle()
    static let sectionHeaderFont: Font = .largeTitle
    static let hotKeyWidth: CGFloat? = 200
    static let subtitleColor: Color = .red
    
    func layout(isIpad: Bool) -> AnyLayout {
        AnyLayout(HStackLayout())
    }
}
#endif
