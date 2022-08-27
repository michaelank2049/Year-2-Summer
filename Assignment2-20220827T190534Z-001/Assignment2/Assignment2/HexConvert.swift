//
//  HexConvert.swift
//  Assignment2
//
//  Created by Lankford, Michael A on 7/4/21.
//

import Foundation

class HexConvert{
    
    var numberType: Int
    var numberAmount: String
    
    init(numberType: Int, numberAmount: String){
        self.numberType = numberType
        self.numberAmount = numberAmount
    }
    
    func convertToHex() -> String{
        if numberType == 0{
            return String(Int(numberAmount, radix: 2)!, radix: 16)
        }
        else if numberType == 1{
            return String(numberAmount)
        }
        else if numberType == 2{
            return String(Int(numberAmount, radix: 8)!, radix: 16)
        }
        else if numberType == 3{
            return String(Int(numberAmount)!, radix: 16)
        }
        else{
            return "Error"
        }
    }
}
