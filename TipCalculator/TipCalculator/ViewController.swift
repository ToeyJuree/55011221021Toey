//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var tTextField: UITextField!

    @IBOutlet weak var taxPctSlider: UISlider!
    
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!
    
    
    
    @IBAction func calculateTapped(sender: AnyObject) {
        tipCalc.total = Double((tTextField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTip()
        var results = ""
        for (tipPct, tipValue) in possibleTips {
        results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextView.text = results
   }
    
    @IBAction func taxPercentageChanged(sender: AnyObject) {
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
    }
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    func refreshUI() {
       tTextField.text = String(format: "%0.21", tipCalc.total)
        taxPctSlider.value = Float(tipCalc.taxPct) * 100.0
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        resultsTextView.text = ""
    }
    }

