//
//  ViewController.swift
//  tip
//
//  Created by Corey Cunningham on 12/9/20.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControlLabel.selectedSegmentIndex]
        let total = bill + tip
        // update the tip and total lablels
        totalLabel.text = String(format: "$%.2f", total)
        tipPercentage.text = String(format: "$%.2f", tip)
    }

    @IBOutlet weak var tipControlLabel: UISegmentedControl!
    
    @IBAction func billAmountTextField(_ sender: Any) {
    }
    
    @IBOutlet weak var tipPercentage: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
}

