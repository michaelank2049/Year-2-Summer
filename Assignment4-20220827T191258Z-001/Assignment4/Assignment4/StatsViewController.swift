//
//  StatsViewController.swift
//  Assignment4
//
//  Created by Lankford, Michael A on 7/26/21.
//

import UIKit

class StatsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {       // Sets section amount in table view
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {     // Sets table view title
        return "Users"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {       // Sets number of rows
        return 1//usersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        // Sets table view cell values
        let contactIdentifier = "UserCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: contactIdentifier, for: indexPath)
        cell.textLabel!.text = String("Username: \(userName)")
        cell.detailTextLabel?.text = String("Highest Speed: \(highSpeed)")
        return cell
    }
    
    

    @IBOutlet weak var lastTry: UILabel!            // Variable declarations
    @IBOutlet weak var secondLastTry: UILabel!
    @IBOutlet weak var thirdLastTry: UILabel!
    @IBOutlet weak var numTries: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var usersArray: [String] = []
    var userName: String = ""
    var highSpeed: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self      // Sets delegate and datasource for table view
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {         // Sets values for labels gotten from speedtestviewcontroller
        
        let speedTestTab = self.tabBarController?.viewControllers?[0] as! SpeedTestViewController
        thirdLastTry.text = String("\(speedTestTab.thirdLastTry)")
        secondLastTry.text = String("\(speedTestTab.secondLastTry)")
        lastTry.text = String("\(speedTestTab.lastTry)")
        if thirdLastTry.text == "0"{            // Sets text to --- if 0 because 0 means a test hasn't been done
            thirdLastTry.text = "---"
        }
        else if secondLastTry.text == "0"{
            secondLastTry.text = "---"
        }
        else if lastTry.text == "0"{
            lastTry.text = "---"
        }
        highSpeed = speedTestTab.highSpeed
        numTries.text = String("\(speedTestTab.totalNumTries)")
        usersArray = speedTestTab.usersArray
        userName = speedTestTab.uName
    }
    

    

}
