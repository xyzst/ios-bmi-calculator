//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Darren Rambaud on 02/13/2020.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    let formatter = NumberFormatter()

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var currentHeight: UISlider!
    @IBOutlet weak var currentWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightUpdated(_ sender: UISlider) {
        height.text = "\(roundTo(value: sender.value, style: .decimal, fractional: 2)) m"
    }
    
    @IBAction func weightUpdated(_ sender: UISlider) {
        weight.text = "\(roundTo(value: sender.value, style: .none, fractional: 0)) kg"
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        // To create segue, need to:
        // 1) In storyboard, create 'segue' from one storyboard to another. In this case, CalculateViewControlle to ResultViewController
        // 2) In storyboard, give the newly created segue an identifier (click storyboard segue element, go to identifier tab)
        // 3) In the view to segue from, reference the identifier in the self.performSegue() method
        self.performSegue(withIdentifier: "transitionToResult", sender: self)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "transitionToResult" {
            let destination = segue.destination as! ResultViewController
            let h = currentHeight.value
            let w = currentWeight.value
            destination.bmi = w / powf(h, 2)
        }
    }
    
    // MARK: - Utility
    
    func roundTo(value: Float, style: NumberFormatter.Style, fractional: Int) -> String {
        formatter.numberStyle = style
        formatter.maximumFractionDigits = fractional
        return formatter.string(from: NSNumber(value: value))!
    }
}

