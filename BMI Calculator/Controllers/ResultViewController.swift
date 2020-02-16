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
    
    var bmi: BMI?

    @IBOutlet weak var bodyMassIndexLabel: UILabel!
    @IBOutlet weak var suggestedAdviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bodyMassIndexLabel.text = String(format: "%.2f", bmi!.value)
        suggestedAdviceLabel.text = bmi!.advice
        view.backgroundColor = bmi!.color
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: {
            () -> Void in
            print("dismissed!")
        })
    }

}
