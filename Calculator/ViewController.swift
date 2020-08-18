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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func functionButtonPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
    }
    

    @IBAction func numberButtonPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
    }
    

}

