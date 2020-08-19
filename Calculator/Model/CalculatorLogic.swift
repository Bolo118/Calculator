//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Adithep on 8/18/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import UIKit

struct CalculatorLogic {
    
    var label: UILabel!
    private var isFinishedTyping = true
    private var isDecimal = false
    private var numbers = 0.0
    private var symbol = ""
    
    let numberFormatter = NumberFormatter()
//    numberFormatter.numberStyle = .decimal
//    let formattedNumber = numberFormatter.string(from: NSNumber(value:largeNumber))
    
    mutating func resetNumber() {
        label.text = "0"
        isFinishedTyping = true
        isDecimal = false
    }
    
    mutating func checkNumber(num: String) {
        if num == "." && !isDecimal {
            label.text = label.text! + num
            isDecimal = true
        } else if num == "." && isDecimal {
            return
        } else {
            if isFinishedTyping {
                label.text = num
                isFinishedTyping = false
            } else {
                label.text = label.text! + num
            }
        }
    }
    
    mutating func checkFunction(symbols: String) {
        switch symbols {
        case "AC":
            resetNumber()
            numbers = 0.0
        case "+/-":
            label.text = String(Double(label.text!)! * -1)
        case "%":
            label.text = String(Double(label.text!)! * 0.01)
        case "+", "-","÷","×":
            numbers = Double(label.text!)!
            resetNumber()
            switch symbols {
            case "+":
                symbol = "+"
            case "-":
                symbol = "-"
            case "÷":
                symbol = "÷"
            case "×":
                symbol = "×"
            default:
                print("Something's wrong from calculation")
            }
        case "=":
            switch symbol {
            case "+":
                numbers += Double(label.text!)!
            case "-":
                numbers -= Double(label.text!)!
            case "÷":
                numbers /= Double(label.text!)!
            case "×":
                numbers *= Double(label.text!)!
            default:
                print("Something's wrong from =")
            }
            isFinishedTyping = true
            isDecimal = true
            label.text = String(format: "%.2f", numbers)
        default:
            print("Something")
        }
    }
    
}
