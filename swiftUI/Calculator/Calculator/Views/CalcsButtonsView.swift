//
//  CalcsButtonsView.swift
//  Calculator
//
//  Created by Cynthia Denisse Verdiales Moreno on 10/04/24.
//

import SwiftUI

struct CalcButtonModel: Identifiable {
    let id = UUID()
    let calcButton: CalcButton
    var color: Color = foregroundDigits
}

struct RowOfCalcButtonsModel: Identifiable {
    let id = UUID()
    let row: [CalcButtonModel]
}

struct CalcsButtonsView: View {
    @Binding var currentComputation: String
    @Binding var mainResult: String
    let buttonData: [RowOfCalcButtonsModel] = [
    RowOfCalcButtonsModel(row: [
        CalcButtonModel(calcButton: .clear, color: foregroundTopButtons),
        CalcButtonModel(calcButton: .negative, color: foregroundTopButtons),
        CalcButtonModel(calcButton: .percent, color: foregroundTopButtons),
        CalcButtonModel(calcButton: .divide, color: foregroundRightButtons)
    ]),
    RowOfCalcButtonsModel(row: [
        CalcButtonModel(calcButton: .seven),
        CalcButtonModel(calcButton: .eight),
        CalcButtonModel(calcButton: .nine),
        CalcButtonModel(calcButton: .multiply, color: foregroundRightButtons)
    ]),
    RowOfCalcButtonsModel(row: [
        CalcButtonModel(calcButton: .four),
        CalcButtonModel(calcButton: .five),
        CalcButtonModel(calcButton: .six),
        CalcButtonModel(calcButton: .subtract, color: foregroundRightButtons)
    ]),
    RowOfCalcButtonsModel(row: [
        CalcButtonModel(calcButton: .one),
        CalcButtonModel(calcButton: .two),
        CalcButtonModel(calcButton: .three),
        CalcButtonModel(calcButton: .add, color: foregroundRightButtons)
    ]),
    RowOfCalcButtonsModel(row: [
        CalcButtonModel(calcButton: .undo),
        CalcButtonModel(calcButton: .zero),
        CalcButtonModel(calcButton: .decimal),
        CalcButtonModel(calcButton: .equal, color: foregroundRightButtons)
    ])
    ]
    
    var body: some View {
        Grid() {
            ForEach(buttonData) { rowOfCalcBtnModel in
                GridRow {
                    ForEach(rowOfCalcBtnModel.row ) {calcBtnModel in
                        Button(action: {
                            print("Button Pressed")
                            buttonPressed(calcButton: calcBtnModel.calcButton)
                        }, label: {
                            ButtonView(calcButton: calcBtnModel.calcButton, fgColor: calcBtnModel.color, bgColor: buttonBackground)
                        })
                    }
                }
            }
        }
        .padding()
        .background(secondaryBackground.cornerRadius(20))
    }
    
    func buttonPressed(calcButton: CalcButton) {
        switch calcButton {
        case .clear:
            currentComputation = ""
            mainResult = "0"
        case .equal, .negative:
            if !currentComputation.isEmpty {
                if !lastCharacterIsAnOperator(str: currentComputation){
                    let sign = calcButton == .negative ? -1.0 : 1.0
                   mainResult = formatResult(val: sign * calculateResults())
                    
                    if calcButton == .negative {
                        currentComputation = mainResult
                    }
                }
            }
        case .decimal:
            if let lastOccurenceOfDecimal = currentComputation.lastIndex(of: ".") {
                if lastCharIsDigit(str: currentComputation) {
                    let startIndex = currentComputation.index(lastOccurenceOfDecimal, offsetBy: 1)
                    let endIndex = currentComputation.endIndex
                    let range = startIndex..<endIndex
                    let rightSubtring = String(currentComputation[range])
                    
                    //Only have digits to the right "." that means do not add another "."
                    //otherwise we can add another decimal point
                    if Int(rightSubtring) == nil && !rightSubtring.isEmpty {
                        currentComputation += "."
                    }
                }
            } else {
                if currentComputation.isEmpty {
                    currentComputation += "0."
                } else if lastCharIsDigit(str: currentComputation) {
                    currentComputation += "."
                }
            }
            
        case .percent:
            if lastCharIsDigit(str: currentComputation) {
                appendToCurrentComputation(calcButton: calcButton)
            }
        case .undo:
            currentComputation = String(currentComputation.dropLast())
        case .add, .subtract, .multiply, .divide:
            if lastCharIsDigitOrPercent(str: currentComputation) {
                appendToCurrentComputation(calcButton: calcButton)
            }
            
        default:
            appendToCurrentComputation(calcButton: calcButton)
        }
    }
    
    func appendToCurrentComputation(calcButton: CalcButton) {
        currentComputation += calcButton.rawValue
    }
    
    func calculateResults() -> Double {
        let visibleWorkings: String = currentComputation
        
        var workings = visibleWorkings.replacingOccurrences(of: "%", with: "*0.01")
        workings = workings.replacingOccurrences(of: multiplySimbol, with: "*")
        workings = workings.replacingOccurrences(of: divisionSumbol, with: "/")
        
        // if we have "35." this will ve replaced by "35.0"
        if getLastChar(str: visibleWorkings) == "." {
            workings += "0"
        }
        
        let expr = NSExpression(format: workings)
        let exprValue = expr.expressionValue(with: nil, context: nil) as! Double
        
        return exprValue
    }
    
}

#Preview {
    CalcsButtonsView(currentComputation: .constant("5+1"), mainResult: .constant("6"))
}
