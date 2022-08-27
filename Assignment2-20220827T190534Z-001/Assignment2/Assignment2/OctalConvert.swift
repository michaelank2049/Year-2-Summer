//
//  OctalConvert.swift
//  Assignment2
//
//  Created by Lankford, Michael A on 7/4/21.
//

import Foundation

class OctalConvert{
    
    var numberType: Int
    var numberAmount: String
    
    init(numberType: Int, numberAmount: String){
        self.numberType = numberType
        self.numberAmount = numberAmount
    }
    
    func convertToOctal() -> String{
        if numberType == 0{
            return String(Int(numberAmount, radix: 2)!, radix: 8)
        }
        else if numberType == 1{
            return String(Int(numberAmount, radix: 16)!, radix: 8)
        }
        else if numberType == 2{
            return String(numberAmount)
        }
        else if numberType == 3{
            return String(Int(numberAmount)!, radix: 8)
        }
        else{
            return "Error"
        }
    }
}
