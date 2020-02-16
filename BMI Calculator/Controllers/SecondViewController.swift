//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Darren Rambaud on 2/16/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var BMI: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = String(format: "%.2f", BMI)
        
        // Position the label at the (0,0) coordinate with a 100 x 50 dimension
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.addSubview(label)
    }
}
