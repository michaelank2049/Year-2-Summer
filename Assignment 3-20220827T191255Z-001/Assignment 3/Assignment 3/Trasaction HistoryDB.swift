//
//  Trasaction HistoryDB.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/19/21.
//

import Foundation

class TransactionHistoryDB{
    var tHistory: [TransactionHistory]      // Variable delcaration
    
    init(){     // Initializer
        tHistory = [TransactionHistory]()
        loadDatabase()
    }
    
    func transactAtIndex(idx:Int) -> TransactionHistory{        // Returns index
        return tHistory[idx]
    }
    
    func count() -> Int{        // returns count
        return tHistory.count
    }
    
    func loadDatabase(){        // Loads a starter value for table view
        tHistory.append(TransactionHistory(1, 10, "00/00/0000 00:00"))
    }
    
    func addTHistory( _ t: TransactionHistory){     // Appends to table view
        tHistory.append(t)
    }
}
