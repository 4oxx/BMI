//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by user21 on 24.04.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
      
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    
        
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(heigh: Float, weight: Float){
       let  bmiValue = weight / (heigh * heigh)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You must eat more!", color: UIColor.blue)
        }else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Your weight is normal", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "ohhh, overweight", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
        
       // bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
}
