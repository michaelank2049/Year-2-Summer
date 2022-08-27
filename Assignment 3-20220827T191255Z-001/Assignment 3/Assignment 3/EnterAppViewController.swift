//
//  EnterAppViewController.swift
//  Assignment 3
//
//  Created by Lankford, Michael A on 7/16/21.
//

import UIKit

class EnterAppViewController: UIViewController {

    @IBOutlet weak var pword1: UITextField! // Declared variables
    
    @IBOutlet weak var message: UILabel!
    
    var enteredPassword: String = ""
    
    @IBAction func pressToEnter(_ sender: UIButton) {   // Button press action
        message.text = "Enter your password to login"
        if pword1.text == "" || enteredPassword == ""{
            message.text = "Error. Wrong Password."
        }
        else if pword1.text == enteredPassword{     // Perform the segue if the entered passwords match
            performSegue(withIdentifier: "EnterToService", sender: self)
        }
        else{
            message.text = "Error. Wrong Password."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }

    @IBAction func save(segue: UIStoryboardSegue){      // Save segue that brings new entered password
        if segue.identifier == "SaveUnwindSegue"{
            let dest = segue.source as! WelcomeViewController
            enteredPassword = dest.pword.text!
            
        }
        

    }

}
