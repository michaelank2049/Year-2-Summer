//
//  MortgageCalc.swift
//  Mortgage
//
//  Created by Lankford, Michael A on 6/25/21.
//

import Foundation

class MortgageCalc{
    var numYears: Int
    var currentValue: Double
    var tax: Double
    var intRate: Double
    
    init(numYears:Int, currentValue:Double, tax:Double, intRate:Double){
        self.numYears = numYears
        self.currentValue = currentValue
        self.tax = tax
        self.intRate = intRate
    }
    
    func calculatePayment() -> Double{
        intRate /= 1200
        var theTax = (tax / 12) * currentValue
        let pmt = currentValue * (intRate + intRate / pow(1.0+intRate, Double(numYears) * 12)) + theTax
        return pmt
    }
}
