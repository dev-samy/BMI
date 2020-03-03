//
//  calculateBrain.swift
//  BMI Calculator
//
//  Created by Abdelrahman Samy on 21/12/2019.
//  Copyright © 2019 Abdelrahman Samy. All rights reserved.
//

import UIKit

struct CalculateBrain {
    var bmi: BMI?
    
    func getImage() -> UIImage {
        return bmi?.image ?? #imageLiteral(resourceName: "1")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
//    func getColor() -> UIColor {
//        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//       }
    
    func getBMIvalue() -> String {
     
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    
    mutating func caculateBMI(height: Float , weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies!", image: #imageLiteral(resourceName: "6"))
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "NORMAL", image: #imageLiteral(resourceName: "1"))
            }else if bmiValue < 29.9{
                       bmi = BMI(value: bmiValue, advice: "OVERWEIGHT", image: #imageLiteral(resourceName: "2"))
            }else if bmiValue < 34.9{
                       bmi = BMI(value: bmiValue, advice: "OBESE", image: #imageLiteral(resourceName: "3"))
            }else if bmiValue < 39.9{
                       bmi = BMI(value: bmiValue, advice: "SEVERELY OBESE", image: #imageLiteral(resourceName: "4"))
           
        }else{
            bmi = BMI(value: bmiValue, advice: "MORBIDLY OBESE", image: #imageLiteral(resourceName: "5"))
        }
    }
}
