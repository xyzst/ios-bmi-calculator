//
//  ResultViewController.swift
//  BMI Calculator
//
//  A "Cocoa Touch Class"
//
//  Created by Darren Rambaud on 2/16/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: Float = 0.0

    @IBOutlet weak var bodyMassIndexLabel: UILabel!
    @IBOutlet weak var suggestedAdviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bodyMassIndexLabel.text = String(format: "%.2f", bmi)
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
    }

}
