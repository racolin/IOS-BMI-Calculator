//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Administrator on 14/06/2023.
//

import UIKit

class ResultController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = String(format: "%.2f", bmi.getBMI())
        labelDescription.text = bmi.getAdvice()
        labelDescription.textColor = bmi.getColor() 
    }
    
    var bmi: BMIModel = BMIModel(height: 0, weight: 1)
    
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var labelResult: UILabel!
    @IBAction func onRecalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
