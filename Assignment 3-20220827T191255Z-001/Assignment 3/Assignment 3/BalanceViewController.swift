//
//  BalanceViewController.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/18/21.
//

import UIKit

class BalanceViewController: UIViewController {
    
    var total: Int = 0      // Variable declarations
    
    @IBOutlet weak var totalBalance: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        totalBalance.text = String("$\(total)")     // Returns total when balance controller is opened
        
        // Do any additional setup after loading the view.
    }


}
