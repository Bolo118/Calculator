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
    
    var calculate = CalculatorLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculate.label = self.displayLabel
        
    }
    
    @IBAction func functionButtonPressed(_ sender: UIButton) {
        if let function = sender.currentTitle {
            calculate.checkFunction(symbols: function)
        }
    }
    
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        if let number = sender.currentTitle {
            calculate.checkNumber(num: number)
        }
    }
    
}

