//
//  ViewController.swift
//  Assignment1
//
//  Created by Lankford, Michael A on 6/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
    
    @IBOutlet weak var numType: UISegmentedControl!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func add(_ sender: Any) {
        if numType.selectedSegmentIndex == 0{
            if let number1 = Int(num1.text!){
                if let number2 = Int(num2.text!){
                    let output = Int(number1 + number2)
                    result.text = "\(number1) + \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
            
        }else{
            if let number1 = Double(num1.text!){
                if let number2 = Double(num2.text!){
                    let output = String(format: "%.2f", Double(number1 + number2))
                    result.text = "\(number1) + \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
        }
    }
    
    @IBAction func subtract(_ sender: UIButton) {
        if numType.selectedSegmentIndex == 0{
            if let number1 = Int(num1.text!){
                if let number2 = Int(num2.text!){
                    let output = Int(number1 - number2)
                    result.text = "\(number1) - \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
            
        }else{
            if let number1 = Double(num1.text!){
                if let number2 = Double(num2.text!){
                    let output = String(format: "%.2f", Double(number1 - number2))
                    result.text = "\(number1) - \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
        }
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        if numType.selectedSegmentIndex == 0{
            if let number1 = Int(num1.text!){
                if let number2 = Int(num2.text!){
                    let output = Int(number1 * number2)
                    result.text = "\(number1) * \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
            
        }else{
            if let number1 = Double(num1.text!){
                if let number2 = Double(num2.text!){
                    let output = String(format: "%.2f", Double(number1 * number2))
                    result.text = "\(number1) * \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
        }
    }
    
    @IBAction func divide(_ sender: UIButton) {
        if numType.selectedSegmentIndex == 0{
            if let number1 = Int(num1.text!){
                if let number2 = Int(num2.text!){
                    let output = Int(number1 / number2)
                    result.text = "\(number1) / \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
            
        }else{
            if let number1 = Double(num1.text!){
                if let number2 = Double(num2.text!){
                    let output = String(format: "%.2f", Double(number1 / number2))
                    result.text = "\(number1) / \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
        }
    }
    
    @IBAction func mod(_ sender: UIButton) {
        if numType.selectedSegmentIndex == 0{
            if let number1 = Int(num1.text!){
                if let number2 = Int(num2.text!){
                    let output = Int(number1 % number2)
                    result.text = "\(number1) % \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
            
        }else{
            result.text = "Error. Modulus does not work with doubles."
        }
    }
    
    @IBAction func power(_ sender: UIButton) {
        if numType.selectedSegmentIndex == 0{
            if let number1 = Int(num1.text!){
                if let number2 = Int(num2.text!){
                    let output = pow(Decimal(Int(number1)), Int(number2))
                    result.text = "\(number1) ^ \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
            
        }else{
            if let number1 = Double(num1.text!){
                if let number2 = Double(num2.text!){
                    let output = String(format: "%.2f", Double(pow(Double(number1), Double(number2))))
                    result.text = "\(number1) ^ \(number2) = \(output)"
                }else{
                    result.text = "Error"
                }
            }else{
                result.text = "Error"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

