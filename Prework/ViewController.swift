//
//  ViewController.swift
//  Prework
//
//  Created by Avery Benfield on 1/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmoutLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tip Calculator"
        
        let defaults = UserDefaults.standard
        
        defaults.set(15, forKey: "tip1Val")
        defaults.set(18, forKey: "tip2Val")
        defaults.set(20, forKey: "tip3Val")
        
        defaults.synchronize()
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmoutLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

