//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Administrator on 14/06/2023.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        onWeightChanged(sliderWeight)
        onHeightChanged(sliderHeight)
    }
    var brain = BMIBrain(maxHeight: 3, maxWeight: 300)

    @IBAction func onHeightChanged(_ sender: UISlider) {
        labelHeight.text = String(format: "%.2fm", brain.getHeightFromPercent(height: sender.value))
    }
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    @IBAction func onWeightChanged(_ sender: UISlider) {
        labelWeight.text = String(format: "%.0fkg", brain.getWeightFromPercent(weight: sender.value))
    }
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelHeight: UILabel!
    @IBAction func onCalculate(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let resultVC = segue.destination as! ResultController
            
            resultVC.bmi = brain.getBMIModel()
        }
    }
}

