//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by Administrator on 14/06/2023.
//

import Foundation

struct BMIBrain {
    let maxHeight : Float
    let maxWeight : Float
    
    var currentWeight : Float
    var currentHeight : Float
    
    init(maxHeight: Float, maxWeight: Float, currentWeight: Float = 0, currentHeight: Float = 0) {
        self.maxHeight = maxHeight
        self.maxWeight = maxWeight
        self.currentWeight = currentWeight
        self.currentHeight = currentHeight
    }
    
    
    mutating func getHeightFromPercent(height: Float) -> Float {
        currentHeight = height * maxHeight
        return currentHeight
    }
    
    mutating func getWeightFromPercent(weight: Float) -> Float {
        currentWeight = weight * maxWeight
        return currentWeight
    }
    
    func getBMIModel() -> BMIModel {
        print(currentHeight)
        print(currentWeight)
        return BMIModel(height: currentHeight, weight: currentWeight)
    }
}
