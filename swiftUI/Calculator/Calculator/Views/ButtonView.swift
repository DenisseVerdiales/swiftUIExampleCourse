//
//  ButtonView.swift
//  Calculator
//
//  Created by Cynthia Denisse Verdiales Moreno on 19/04/24.
//

import SwiftUI

struct ButtonView: View {
    let calcButton: CalcButton
    let fgColor: Color
    let bgColor: Color
    var systemImage: String? {
        let value = calcButton.rawValue
        return value.contains("IMG") ? value.replacingOccurrences(of: "IMG", with: "") : nil
    }
    
    var text: String? {
        let value = calcButton.rawValue
        
        return value.contains("IMG") ? nil : value
    }
    var buttonDim: CGFloat = UIDevice.isIpad  ? UIScreen.main.bounds.width / 6 : UIScreen.main.bounds.width / 5
    
    var body: some View {
        ZStack {
            Text(text ?? "")
            Image(systemName: systemImage ?? "")
        }
        .font(UIDevice.isIpad ? .title2 : .title2)
        .fontWeight(UIDevice.isIpad ? .heavy : .semibold)
        .frame(width: buttonDim, height: buttonDim)
        .foregroundColor(fgColor)
        .background(bgColor)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: bgColor.opacity(0.5), radius: 3, x: 5, y: 5)
    }
}

#Preview {
    VStack {
        ButtonView(calcButton: .undo, fgColor: foregroundDigits, bgColor: buttonBackground)
        ButtonView(calcButton: .negative, fgColor: foregroundDigits, bgColor: buttonBackground)
        ButtonView(calcButton: .one, fgColor: foregroundDigits, bgColor: buttonBackground)
        ButtonView(calcButton: .percent, fgColor: foregroundTopButtons, bgColor: buttonBackground)
        ButtonView(calcButton: .add, fgColor: foregroundRightButtons, bgColor: buttonBackground)
    }
}
