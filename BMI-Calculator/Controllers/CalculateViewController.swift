//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by tetsuta matsuyama on 2022/06/13.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.value
        }
    }
    
    func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        calculatorBrain.value = getBMIValue(bmiValue)
    }
    
    func getBMIValue(_ bmiValue: Float) -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiValue)
        return bmiTo1DecimalPlace
    }


}

