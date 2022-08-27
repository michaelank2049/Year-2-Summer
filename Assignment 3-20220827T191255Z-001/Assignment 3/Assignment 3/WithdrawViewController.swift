//
//  WithdrawViewController.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/18/21.
//

import UIKit

class WithdrawViewController: UIViewController {
    
    var total: Int = 0      // Variable declarations
    let type = 2
    var amount: Int = 0
    var dateTime: String = ""
    var num: Int = 0
    
    @IBOutlet weak var message: UILabel!
    
    @IBAction func ten(_ sender: UIButton) {        // Function if $10 withdrawal is clicked
        let num = 10
        
        let withdrawTen = Withdrawal(num: num, total: total)
        total = withdrawTen.withdrawMoney()
        if total < 0 || total == 0{         // Checks if total is 0 or < 0 then prints appropriate message
            total = 0
            message.text = String("Balance is: $\(total)")
            

            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
        else{
            message.text = String("Balance is: $\(total)")
            
            let date = Date()       // Calls transaction history class
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
    }
    
    @IBAction func twenty(_ sender: UIButton) {     // Function if $20 withdrawal is clicked
        let num = 20
        let withdrawTwenty = Withdrawal(num: num, total: total) // Calls Withdrawal class
        total = withdrawTwenty.withdrawMoney()
        if total < 0 || total == 0{
            total = 0
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
        else{
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
    }
    
    @IBAction func fifty(_ sender: UIButton) {      // Function if $50 withdrawal is clicked
        let num = 50
        let withdrawFifty = Withdrawal(num: num, total: total)
        total = withdrawFifty.withdrawMoney()
        if total < 0 || total == 0{
            total = 0
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
            let tHistory = TransactionHistory(type, num, String("\(dateTime)"))
        }
        else{
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
    }
    
    @IBAction func oneHundred(_ sender: UIButton) {     // Function if $100 withdrawal is clicked
        let num = 100
        let withdrawOneHundred = Withdrawal(num: num, total: total)
        total = withdrawOneHundred.withdrawMoney()
        if total < 0 || total == 0{
            total = 0
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
        else{
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
    }
    
    @IBAction func twoHundred(_ sender: UIButton) {     // Function if $200 withdrawal is clicked
        let num = 200
        let withdrawTwoHundred = Withdrawal(num: num, total: total)
        total = withdrawTwoHundred.withdrawMoney()
        if total < 0 || total == 0{
            total = 0
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
        else{
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
    }
    
    @IBAction func fiveHundred(_ sender: UIButton) {        // Function if $500 withdrawal is clicked
        let num = 500
        let withdrawFiveHundred = Withdrawal(num: num, total: total)
        total = withdrawFiveHundred.withdrawMoney()
        if total < 0 || total == 0{
            total = 0
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
        else{
            message.text = String("Balance is: $\(total)")
            
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            let dateTime = formatter.string(from: date)
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        if total < 0 || total == 0{     // Prints appropriate message when withdrawal is opened
            total = 0
            message.text = String("Balance is: $\(total)")
        }
        else{
            message.text = String("Balance is: $\(total)")
        }
        // Do any additional setup after loading the view.
    }

}

