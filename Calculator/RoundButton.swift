//
//  RoundButton.swift
//  Calculator
//
//  Created by Adithep on 8/18/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import UIKit

class RoundButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = self.frame.size.height/2.65
        
    }
    
}
