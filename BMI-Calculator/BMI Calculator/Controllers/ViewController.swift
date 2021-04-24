//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heighLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heighSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func firstSlider(_ sender: UISlider) {
      let  heigh = String(format: "%.2f ", sender.value)
        heighLabel.text = "\(heigh)m"
    }
    
    
    @IBAction func secondSlider(_ sender: UISlider) {
       let weight = String(Int(sender.value))
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculateNow(_ sender: UIButton) {
       let heigh = heighSlider.value
       let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(heigh: heigh, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

