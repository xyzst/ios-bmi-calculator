//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Darren Rambaud on 02/13/2020.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let formatter = NumberFormatter()

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightUpdated(_ sender: UISlider) {
        height.text = "\(roundTo(value: sender.value, style: .decimal, fractional: 2)) m"
    }
    
    @IBAction func weightUpdated(_ sender: UISlider) {
        weight.text = "\(roundTo(value: sender.value, style: .none, fractional: 0)) kg"
    }
    
    func roundTo(value: Float, style: NumberFormatter.Style, fractional: Int) -> String {
        formatter.numberStyle = style
        formatter.maximumFractionDigits = fractional
        return formatter.string(from: NSNumber(value: value))!
    }
}

