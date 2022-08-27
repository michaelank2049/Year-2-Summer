//
//  BinaryConvert.swift
//  Assignment2
//
//  Created by Lankford, Michael A on 7/2/21.
//

import Foundation

class BinaryConvert{
    
    var numberType: Int
    var numberAmount: String
    
    init(numberType: Int, numberAmount: String){
        self.numberType = numberType
        self.numberAmount = numberAmount
    }
    
    func convertToBinary() -> String{
        if numberType == 0{
            return String(numberAmount)
        }
        else if numberType == 1{
            return String(Int(numberAmount, radix: 16)!, radix: 2)
        }
        else if numberType == 2{
            return String(Int(numberAmount, radix: 8)!, radix: 2)
        }
        else if numberType == 3{
            return String(Int(numberAmount)!, radix: 2)
        }
        else{
            return "Error"
        }
    }
}
