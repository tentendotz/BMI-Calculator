//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by tetsuta matsuyama on 2022/06/15.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        bmi = BMI(value: bmiValue)
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    
    
}
