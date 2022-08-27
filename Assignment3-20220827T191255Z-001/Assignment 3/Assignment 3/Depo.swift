//
//  Depo.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/18/21.
//

import Foundation

class Depo{
    var num: Int        // Variable declarations
    var total: Int
    
    init(num: Int, total: Int){     // Initializer
        self.num = num
        self.total = total
    }
    
    func depositMoney() -> Int{     // Function to calculate balance after deposits
        if num == 10{
            total += 10
            return total        // returns balance to deposit controller
        }
        else if num == 20{
            total += 20     // Adds correct amount
            return total
        }
        else if num == 50{
            total += 50
            return total
        }
        else if num == 100{
            total += 100
            return total
        }
        else if num == 200{
            total += 200
            return total
        }
        else if num == 500{
            total += 500
            return total
        }
        else{
            return total
        }
    }
    
}
