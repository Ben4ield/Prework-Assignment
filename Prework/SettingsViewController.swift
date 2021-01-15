//
//  SettingsViewController.swift
//  Prework
//
//  Created by Avery Benfield on 1/15/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1TextField: UITextField!
    @IBOutlet weak var tip2TextField: UITextField!
    @IBOutlet weak var tip3TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        let tip1Val = defaults.integer(forKey: "tip1Val")
        let tip2Val = defaults.integer(forKey: "tip2Val")
        let tip3Val = defaults.integer(forKey: "tip3Val")
        
        tip1TextField.text = String(tip1Val)
        tip2TextField.text = String(tip2Val)
        tip3TextField.text = String(tip3Val)

    }
    
    @IBAction func changeTipPercent(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        let newTipVal = Double(tip1TextField.text!)
        
        defaults.set(newTipVal, forKey: "tip1Val")
        
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
