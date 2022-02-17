//
//  ViewController.swift
//  BullsEyeOne
//
//  Created by Gospodi on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func showAlert() {
        let alert = UIAlertController(
            title: "Hello, World!",
            message: "Это уже не первое моё приложение!",
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Awesome", style: .default, handler: nil
        )
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of the slider is now: \(slider.value)")
        
    }
    
    
}

