//
//  Withdrawal.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/18/21.
//

import Foundation

class Withdrawal{
    var num: Int        // Variable declarations
    var total: Int
    
    init(num: Int, total: Int){     // Initializer
        self.num = num
        self.total = total
    }
    
    func withdrawMoney() -> Int{        // Function to get balance after withdrawals
        if num == 10{
            total -= 10
            return total
        }
        else if num == 20{
            total -= 20
            return total
        }
        else if num == 50{
            total -= 50     // Withdraws correct amount
            return total
        }
        else if num == 100{
            total -= 100
            return total        // Returns total after withdrawal
        }
        else if num == 200{
            total -= 200
            return total
        }
        else if num == 500{
            total -= 500
            return total
        }
        else{
            return total
        }
    }
}
