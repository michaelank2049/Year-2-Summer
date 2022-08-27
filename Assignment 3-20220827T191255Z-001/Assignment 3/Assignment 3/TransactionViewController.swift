//
//  TransactionViewController.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/18/21.
//

import UIKit

class TransactionViewController: UITableViewController {


    var tHistory: TransactionHistoryDB!     // Variable declarations
    var type: Int = 0
    var amount: Int = 0
    var dateTime: String = ""
    var tHistory2: TransactionHistory!
    
    override func numberOfSections(in tableView: UITableView) -> Int {      // returns sections for table view
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {        // Sets table view title
        return "Transaction History"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {      // Sets ro amount for table view with count
        return tHistory.count()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {       // Sets cell values for table view
        let tHistoryIdentifier = "THistoryCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: tHistoryIdentifier, for: indexPath)
        let transacHistory = tHistory.transactAtIndex(idx: indexPath.row)
        cell.textLabel!.text = transacHistory.returnDate()
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self      // Sets delegate and dataSource
        self.tableView.dataSource = self

        tHistory = TransactionHistoryDB()
        tHistory2 = TransactionHistory(type, amount, String("\(dateTime)"))
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {     // Segue sends values to InformationViewController
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let id = segue.identifier{
            switch id{
            case"TableViewToInfo":
                if let transacHistory = segue.destination as? InformationViewController{
                    let selectedRow = self.tableView.indexPathForSelectedRow?.row
                    transacHistory.tHistory = tHistory.transactAtIndex(idx: selectedRow!)
                }
            default:
                break
            }
        }
    }
    
    @IBAction func save(segue: UIStoryboardSegue){      // Save segue saves values in this controller
        if segue.identifier == "AddToTableView"{
            let dest = segue.source as! AddInfoViewController
            tHistory.addTHistory(dest.tHistory)
            tableView.reloadData()
        }

    }

}
