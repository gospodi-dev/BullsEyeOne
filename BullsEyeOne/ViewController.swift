//
//  ViewController.swift
//  BullsEyeOne
//
//  Created by Gospodi on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    
    
    var currentValue: Int = 50
    var targetValue = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    func startNewRound() {
      targetValue = Int.random(in: 1...100)
      currentValue = 50
      slider.value = Float(currentValue)
    }

    func updateLabels(){
        targetLabel.text = String(targetValue)
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(
            title: "Hello, World!",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        
    }
    
    
}

