//
//  InformationViewController.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/19/21.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var type: UILabel!       // Variable declarations
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var date: UILabel!
    
    var tHistory: TransactionHistory!
    

    override func viewDidLoad() {       // Sets values when the view is opened
        super.viewDidLoad()
        type.text = String(tHistory.type)
        if type.text == "1"{                // Sets type to deposit or withdrawal based on num values
            type.text = "Deposit"
        }
        else if type.text == "2"{
            type.text = "Withdrawal"
        }
        amount.text = "$" + String(tHistory.amount)     // Sets amount and date/time
        date.text = String("\(tHistory.date)")
        

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    

}
