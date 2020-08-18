//
//  ViewController.swift
//  Calculator
//
//  Created by Adithep on 8/18/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    private var isFinishedTyping = true
    private var isDecimal = false
    private var numbers = 0.0
    private var symbol = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func resetNumber() {
        displayLabel.text = "0"
        isFinishedTyping = true
        isDecimal = false
    }
    
    @IBAction func functionButtonPressed(_ sender: UIButton) {
        if let function = sender.currentTitle {
            switch function {
            case "AC":
                resetNumber()
                numbers = 0.0
            case "+/-":
                displayLabel.text = String(Double(displayLabel.text!)! * -1)
            case "%":
                displayLabel.text = String(Double(displayLabel.text!)! * 0.01)
            case "+", "-","÷","×":
                numbers = Double(displayLabel.text!)!
                resetNumber()
                switch function {
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
                    numbers += Double(displayLabel.text!)!
                case "-":
                    numbers -= Double(displayLabel.text!)!
                case "÷":
                    numbers /= Double(displayLabel.text!)!
                case "×":
                    numbers *= Double(displayLabel.text!)!
                default:
                    print("Something's wrong from =")
                }
                displayLabel.text = String(format: "%.2f", numbers)
            default:
                print("Something")
            }
        }
    }
    
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        if let number = sender.currentTitle {
            if number == "." && !isDecimal {
                displayLabel.text = displayLabel.text! + number
                isDecimal = true
            } else if number == "." && isDecimal {
                return
            } else {
                if isFinishedTyping {
                    displayLabel.text = number
                    isFinishedTyping = false
                } else {
                    displayLabel.text = displayLabel.text! + number
                }
            }
        }
    }
    
}

