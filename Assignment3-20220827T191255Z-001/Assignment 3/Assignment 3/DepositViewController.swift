//
//  DepositViewController.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/18/21.
//

import UIKit

class DepositViewController: UIViewController {
    
    var total: Int  = 0     // Variable declarations
    let type: Int = 1
    var num: Int = 0
    var dateTime = ""

    @IBOutlet weak var message: UILabel!
    
    @IBAction func ten(_ sender: UIButton) {        // Function if $10 deposit is clicked
        var num : Int = 10
        let depoTen = Depo(num: num, total: total)
        total = depoTen.depositMoney()
        message.text = String("Balance is: $\(total)")
        
        let date = Date()       // Calls transaction history class
        let formatter = DateFormatter()
        formatter.dateStyle = .short        // Formats date
        formatter.timeStyle = .short
        let dateTime = formatter.string(from: date)
    }
    
    @IBAction func twenty(_ sender: UIButton) {     // Function if $20 deposit is clicked
        let num = 20
        let depoTwenty = Depo(num: num, total: total)   // Calls Depo(Deposit) class
        total = depoTwenty.depositMoney()
        message.text = String("Balance is: $\(total)")
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        let dateTime = formatter.string(from: date)
    }
    
    @IBAction func fifty(_ sender: UIButton) {      // Function if $50 deposit is clicked
        let num = 50
        let depoFifty = Depo(num: num, total: total)
        total = depoFifty.depositMoney()
        message.text = String("Balance is: $\(total)")  // Prints appropriate message
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        let dateTime = formatter.string(from: date)
    }
    
    @IBAction func oneHundred(_ sender: UIButton) {     // Function if $100 deposit is clicked
        let num = 100
        let depoOneHundred = Depo(num: num, total: total)
        total = depoOneHundred.depositMoney()
        message.text = String("Balance is: $\(total)")
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        let dateTime = formatter.string(from: date)
    }
    
    @IBAction func twoHundred(_ sender: UIButton) {     // Function if $200 deposit is clicked
        let num = 200
        let depoTwoHundred = Depo(num: num, total: total)
        total = depoTwoHundred.depositMoney()
        message.text = String("Balance is: $\(total)")
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        let dateTime = formatter.string(from: date)
    }
    
    @IBAction func fiveHundred(_ sender: UIButton) {        // Function if $500 deposit is clicked
        let num = 500
        let depoFiveHundred = Depo(num: num, total: total)
        total = depoFiveHundred.depositMoney()
        message.text = String("Balance is: $\(total)")
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        let dateTime = formatter.string(from: date)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        message.text = String("Balance is: $\(total)")      // Assigns message once deposit is opened
        // Do any additional setup after loading the view.
    }
}
