//
//  AddInfoViewController.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/19/21.
//

import UIKit

class AddInfoViewController: UIViewController {

    @IBOutlet weak var type: UITextField!       // Variable delcarations
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var date: UITextField!
    
    var tHistory: TransactionHistory!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        tHistory = TransactionHistory(Int(type.text!)!, Int(amount.text!)!, date.text!)     // Assigns transaction history values when called
    }
    

}
