//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Darren Rambaud on 02/13/2020.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightUpdated(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func weightUpdated(_ sender: UISlider) {
        print(sender.value)
    }
}

