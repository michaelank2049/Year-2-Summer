//
//  ServiceViewController.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/18/21.
//

import UIKit

class ServiceViewController: UIViewController{

    var total: Int = 0      // Variable declaration
    var type: Int = 0
    var amount: Int = 0
    var dateTime: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {     // Segue that will send the total values to other view controllers
        if segue.destination is DepositViewController || segue.destination is WithdrawViewController || segue.destination is BalanceViewController || segue.destination is TransactionViewController{   // If statement checks segue destination
            if total != 0 && total > 0{         // If statement assigns total variable if > 0 or != 0
                let vc1 = segue.destination as? DepositViewController
                vc1?.total = total
                let vc2 = segue.destination as? WithdrawViewController
                vc2?.total = total
                let vc3 = segue.destination as? BalanceViewController
                vc3?.total = total
                let vc4 = segue.destination as? TransactionViewController
                vc4?.type = type
                vc4?.amount = amount
                vc4?.dateTime = dateTime
            }
            else{           // Else assigns total to 0 if = 0 or < 0
                let vc1 = segue.destination as? DepositViewController       // Assigns values to each controller when segue is activated
                vc1?.total = 0
                let vc2 = segue.destination as? WithdrawViewController
                vc2?.total = total
                let vc3 = segue.destination as? BalanceViewController
                vc3?.total = total
                let vc4 = segue.destination as? TransactionViewController
                vc4?.type = type
                vc4?.amount = amount
                vc4?.dateTime = dateTime
            }
        }
    }
    
    @IBAction func save(segue: UIStoryboardSegue){      // Save segue gets values from deposit or withdrawal controllers
        if segue.identifier == "SaveUnwindSegue2"{
            let dest = segue.source as! DepositViewController
            total = dest.total
            amount = dest.num
            type = dest.type
            dateTime = dest.dateTime
        }
        else if segue.identifier == "SaveUnwindSegue3"{
            let dest = segue.source as! WithdrawViewController
            total = dest.total
            amount = dest.num
            type = dest.type
            dateTime = dest.dateTime
        }
    }
}
