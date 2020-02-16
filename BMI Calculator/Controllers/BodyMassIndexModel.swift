//
//  BodyMassIndexModel.swift
//  BMI Calculator
//
//  Created by Darren Rambaud on 2/16/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

struct BodyMassIndexModel {
    
    var bmi: BMI?
    
    mutating func calculate(height: Float, weight: Float) -> BMI {
        let b = weight / powf(height, 2.0)
        self.bmi = BMI(value: b, advice: self.getAdvice(bmi: b), color: self.getColor(bmi: b))
        return self.bmi!
    }
    
    func getAdvice(bmi: Float) -> String {
        return bmi < 18.5 ?
            "Eat more pies!" :
            bmi >= 18.5 && bmi < 24.9 ?
                "Fit as a fiddle!" : "Absolute unit"
    }
    
    func getColor(bmi: Float) -> UIColor {
        return bmi < 18.5 ?
            #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) :
            bmi >= 18.5 && bmi < 24.9 ?
                #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) : #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
    
}
