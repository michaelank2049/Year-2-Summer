//
//  ViewController.swift
//  Mortgage
//
//  Created by Lankford, Michael A on 6/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentPrice: UITextField!
    
    @IBOutlet weak var taxRate: UITextField!
    
    @IBOutlet weak var changeInterest: UISlider!
    
    @IBOutlet weak var changeYears: UIStepper!
    
    @IBOutlet weak var interest: UILabel!
    
    @IBOutlet weak var years: UILabel!
    
    @IBOutlet weak var payment: UILabel!
    
    var mortgageCalc: MortgageCalc!
    
    @IBAction func calculateMortgage(_ sender: UIButton) {
        if let currentValue = Double(currentPrice.text!){
            if let tax = Double(taxRate.text!){
                let intRate = Double(changeInterest.value)
                let numYears = Int(changeYears.value)
                //calculate pmt
                mortgageCalc = MortgageCalc(numYears: numYears, currentValue: currentValue, tax: tax, intRate: intRate)
                let pmt = mortgageCalc.calculatePayment()
                
                payment.text = String(format: "the payment is: %.2f", pmt)
            }
        }
    }
    
    @IBAction func modifyInterest(_ sender: Any) {
        let intRate = changeInterest.value
        interest.text = String(format: "%.3f", intRate)
    }
    
    @IBAction func modifyYears(_ sender: Any) {
        years.text = "\(Int(changeYears.value))"
    }
    
    override func viewDidLoad() {
        changeYears.value = 15
        changeInterest.value = 3
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

