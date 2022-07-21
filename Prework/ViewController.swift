//
//  ViewController.swift
//  Prework
//
//  Created by Haley Coronado on 7/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get the initial bill amount and calculate the tips
        // Calculate the total cost
        // Update the tip and total labels
        
        // Get bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount labal
        tipAmountLabel.text = String(format: "$%.2f",tip)
        // Update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

