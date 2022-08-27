//
//  SpeedTestViewController.swift
//  Assignment4
//
//  Created by Lankford, Michael A on 7/24/21.
//

import UIKit

class SpeedTestViewController: UIViewController {

    var uName: String = ""      // Variable declarations
    var delay: Int = 0
    var defaultSpeed: Int = 0
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var wpmSpeed: UITextField!
    @IBOutlet weak var wordOutput: UILabel!
    var wpm: Int  = 0
    var lastTry: Int = 0
    var secondLastTry: Int = 0
    var thirdLastTry: Int = 0
    var usersArray: [String] = []
    var totalNumTries: Int = 0
    var highSpeed: Int = 0

    @IBAction func startTest(_ sender: UIButton) {      //Button press actions
        sleep(UInt32(delay))        //Sleeps for delay amount
        let randInt = Int.random(in: 0...2)     //Random int for random paragraph
        var numTries: Int = 0
        if wpmSpeed.text == ""{     // If user entered wpm has not been entered go with defaut
            wpm = defaultSpeed
            
            if randInt == 0{        // If random number is 0 choose paragrph 1
                if let path = Bundle.main.path(forResource: "Paragraph1", ofType: "txt"){
                    do{
                        let data = try String(contentsOfFile: path, encoding: .utf8)        // Read from file
                        let myStrings = data.components(separatedBy: .whitespaces)

                        var i: Int = 0
                        while i < myStrings.count{      // Iterate through array
                            let arr = (myStrings[i])
                            var myMutableString = NSMutableAttributedString()
                            let arrLength = arr.count / 2
                            myMutableString = NSMutableAttributedString(string: arr as String)      // Color letter in string
                            myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: arrLength, length: 1))
                            wordOutput.attributedText = myMutableString     // Output string to label
                            i = i + 1
                            numTries = i
                        }
                        numTries =  numTries / myStrings.count      // Calculate desired values for stats view controller
                        totalNumTries += numTries
                        thirdLastTry = secondLastTry
                        secondLastTry = lastTry
                        lastTry = wpm
                        uName = userName.text!
                        if lastTry >= highSpeed{
                            highSpeed = lastTry
                        }
                    }catch{
                        wordOutput.text = "Error"
                    }

                }
            }
            else if randInt == 1{       // If random int is 1 choose paragraph 2
                if let path = Bundle.main.path(forResource: "Paragraph2", ofType: "txt"){
                    do{
                        let data = try String(contentsOfFile: path, encoding: .utf8)
                        let myStrings = data.components(separatedBy: .whitespaces)

                        var i: Int = 0
                        while i < myStrings.count{
                            let arr = (myStrings[i])
                            var myMutableString = NSMutableAttributedString()
                            let arrLength = arr.count / 2
                            myMutableString = NSMutableAttributedString(string: arr as String)
                            myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: arrLength, length: 1))
                            wordOutput.attributedText = myMutableString
                            i = i + 1
                            numTries = i
                        }
                        numTries =  numTries / myStrings.count
                        totalNumTries += numTries
                        thirdLastTry = secondLastTry
                        secondLastTry = lastTry
                        lastTry = wpm
                        uName = userName.text!
                        if lastTry >= highSpeed{
                            highSpeed = lastTry
                        }
                    }catch{
                        wordOutput.text = "Error"       // Print error if paragrph reading produces error
                    }

                }
            }
            else if randInt == 2{       // If random int is 2 choose paragraph 3
                if let path = Bundle.main.path(forResource: "Paragraph3", ofType: "txt"){
                    do{
                        let data = try String(contentsOfFile: path, encoding: .utf8)
                        let myStrings = data.components(separatedBy: .whitespaces)

                        var i: Int = 0
                        while i < myStrings.count{
                            let arr = (myStrings[i])
                            var myMutableString = NSMutableAttributedString()
                            let arrLength = arr.count / 2
                            myMutableString = NSMutableAttributedString(string: arr as String)
                            myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: arrLength, length: 1))
                            wordOutput.attributedText = myMutableString
                            i = i + 1
                            numTries = i
                        }
                        numTries =  numTries / myStrings.count
                        totalNumTries += numTries
                        thirdLastTry = secondLastTry
                        secondLastTry = lastTry
                        lastTry = wpm
                        uName = userName.text!
                        if lastTry >= highSpeed{
                            highSpeed = lastTry
                        }
                    }catch{
                        wordOutput.text = "Error"
                    }

                }
            }
        }
        else{                   // If wpm is entered by the user, ignore default value and use wpm
            wpm = Int(wpmSpeed.text!)!
            if randInt == 0{
                if let path = Bundle.main.path(forResource: "Paragraph1", ofType: "txt"){
                    do{
                        let data = try String(contentsOfFile: path, encoding: .utf8)
                        let myStrings = data.components(separatedBy: .whitespaces)

                        var i: Int = 0
                        while i < myStrings.count{
                            let arr = (myStrings[i])
                            var myMutableString = NSMutableAttributedString()
                            let arrLength = arr.count / 2           // Get array length and divide by 2 to know which letter in middle of array to change color
                            myMutableString = NSMutableAttributedString(string: arr as String)
                            myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: arrLength, length: 1))
                            wordOutput.attributedText = myMutableString
                            i = i + 1
                            numTries = i
                        }
                        numTries =  numTries / myStrings.count
                        totalNumTries += numTries
                        thirdLastTry = secondLastTry
                        secondLastTry = lastTry
                        lastTry = wpm
                        uName = userName.text!
                        if lastTry >= highSpeed{
                            highSpeed = lastTry
                        }
                    }catch{
                        wordOutput.text = "Error"
                    }

                }
            }
            else if randInt == 1{
                if let path = Bundle.main.path(forResource: "Paragraph2", ofType: "txt"){
                    do{
                        let data = try String(contentsOfFile: path, encoding: .utf8)
                        let myStrings = data.components(separatedBy: .whitespaces)

                        var i: Int = 0
                        while i < myStrings.count{
                            let arr = (myStrings[i])
                            var myMutableString = NSMutableAttributedString()
                            let arrLength = arr.count / 2
                            myMutableString = NSMutableAttributedString(string: arr as String)
                            myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: arrLength, length: 1))
                            wordOutput.attributedText = myMutableString
                            i = i + 1
                            numTries = i
                        }
                        numTries =  numTries / myStrings.count      // Increments to know number of tries done
                        totalNumTries += numTries
                        thirdLastTry = secondLastTry        // Changes number for which try you are on
                        secondLastTry = lastTry
                        lastTry = wpm
                        uName = userName.text!
                        if lastTry >= highSpeed{
                            highSpeed = lastTry
                        }
                    }catch{
                        wordOutput.text = "Error"
                    }

                }
            }
            else if randInt == 2{
                if let path = Bundle.main.path(forResource: "Paragraph3", ofType: "txt"){
                    do{
                        let data = try String(contentsOfFile: path, encoding: .utf8)
                        let myStrings = data.components(separatedBy: .whitespaces)

                        var i: Int = 0
                        while i < myStrings.count{
                            let arr = (myStrings[i])
                            var myMutableString = NSMutableAttributedString()
                            let arrLength = arr.count / 2
                            myMutableString = NSMutableAttributedString(string: arr as String)
                            myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: arrLength, length: 1))
                            wordOutput.attributedText = myMutableString
                            i = i + 1
                            numTries = i
                        }
                        numTries =  numTries / myStrings.count
                        totalNumTries += numTries
                        thirdLastTry = secondLastTry
                        secondLastTry = lastTry
                        lastTry = wpm
                        uName = userName.text!
                        if lastTry >= highSpeed{
                            highSpeed = lastTry
                        }
                    }catch{
                        wordOutput.text = "Error"
                    }

                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.text = String("\(uName)")      // Sets username gotten from WelcoeViewController
    }

    
    @IBAction func save(segue: UIStoryboardSegue){      // Save segue gets values from settingsviewcontroller
        let dest = segue.source as! SettingsViewController
        delay = Int(dest.delay.text!)!              //Sets values from controller
        defaultSpeed = Int(dest.defaultSpeed.text!)!
        for element in usersArray{
            if userName.text != element{
                usersArray.append(userName.text!)
            }
        }
        if dest.userName.text != ""{        // If a username is switched is entered, reset tries and values
            userName.text = dest.userName.text
            thirdLastTry = 0
            secondLastTry = 0
            lastTry = 0
            totalNumTries = 0
            for element in usersArray{
                if userName.text != element{
                    usersArray.append(userName.text!)
                }
            }
        }
    }
}

