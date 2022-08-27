//
//  Transaction History.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/18/21.
//

import Foundation

class TransactionHistory{
    var type: Int       // Variable declarations
    var amount: Int
    var date : String
    
    init(_ type: Int, _ amount: Int, _ date: String){     // Initializer
        self.type = type
        self.amount = amount
        self.date = date
    }
    

    func returnDate() -> String{        // Returns date and time
        return String("\(date)")
    }
    
}


