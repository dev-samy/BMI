//
//  ViewController2.swift
//  BMI Calculator
//
//  Created by Abdelrahman Samy on 21/12/2019.
//  Copyright © 2019 Abdelrahman Samy. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var bmiValue: String?
    var advice: String?
    var image: UIImage?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var advanceLabel: UILabel!
    @IBOutlet weak var imageMeter: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        advanceLabel.text = advice
        imageMeter.image = image
    }

    @IBAction func recalcled(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
