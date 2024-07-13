//
//  iPadSupport.swift
//  Calculator
//
//  Created by Cynthia Denisse Verdiales Moreno on 23/04/24.
//

import SwiftUI

extension UIDevice {
    static var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    
    static var isIphone: Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
}
