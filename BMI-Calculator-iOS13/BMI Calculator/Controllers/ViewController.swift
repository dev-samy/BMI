//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Abdelrahman Samy on 21/12/2019.
//  Copyright © 2019 Abdelrahman Samy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {

    var calculateBrain = CalculateBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider2: UISlider!
    @IBOutlet weak var weightSlider2: UISlider!
    @IBOutlet weak var age: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.age.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        weightLabel.text = "\(weight) kg"
    }
    
    @IBAction func calculation(_ sender: UIButton) {
        let height = heightSlider2.value
        let weight = weightSlider2.value
        calculateBrain.caculateBMI(height: height, weight: weight)
    }
     
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let ab = segue.destination as! ViewController2
      ab.bmiValue = calculateBrain.getBMIvalue()
    ab.advice = calculateBrain.getAdvice()
  //  ab.color = calculateBrain.getColor()
    ab.image = calculateBrain.getImage()
    }
    
}

