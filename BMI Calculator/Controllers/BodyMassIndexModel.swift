//
//  BodyMassIndexModel.swift
//  BMI Calculator
//
//  Created by Darren Rambaud on 2/16/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import Foundation

struct BodyMassIndexModel {
    func calculate(height: Float, weight: Float) -> Float {
        return weight / powf(height, 2.0)
    }
}
