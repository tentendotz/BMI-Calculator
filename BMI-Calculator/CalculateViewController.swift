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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }

}

