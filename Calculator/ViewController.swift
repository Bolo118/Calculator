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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func functionButtonPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
    }
    
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        if let number = sender.currentTitle {
            if isFinishedTyping {
                displayLabel.text = number
                isFinishedTyping = false
            } else {
                displayLabel.text = displayLabel.text! + number
            }
        }
    }
    
}

