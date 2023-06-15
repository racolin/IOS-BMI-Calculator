//
//  BMIModel.swift
//  BMI Calculator
//
//  Created by Administrator on 14/06/2023.
//

import UIKit

struct BMIModel {
    let bmi: Float
    
    init(height: Float, weight: Float) {
        self.bmi = weight / (height * height)
    }
    
    func getAdvice() -> String {
        if (bmi < 18.5) {
            return "EAT MORE PIES"
        } else if (bmi < 24.9) {
            return "FIT AS A FIDDLE"
        } else {
            return "EAT LESS PIES"
        }
    }
    
    func getColor() -> UIColor {
        if (bmi < 18.5) {
            return .blue
        } else if (bmi < 24.9) {
            return .green
        } else {
            return .red
        }
    }
    
    func getBMI() -> Float {
        return bmi
    }
}
