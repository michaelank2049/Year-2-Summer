//
//  ViewController.swift
//  Timer
//
//  Created by Lankford, Michael A on 7/12/21.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var counter = 0
    var interval = 0.0
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var intervalValue: UITextField!
    @IBOutlet weak var incrementValue: UITextField!
    
    @objc func updateCounter(){
        counter += Int(incrementValue.text!)!
        counterLabel.text = String(counter)
    }
    
    @IBAction func clear(_ sender: UIBarButtonItem) {
        timer.invalidate()
        counter = 0
        counterLabel.text = "0"
    }
    
    @IBAction func play(_ sender: UIBarButtonItem) {
        if !timer.isValid{
            interval = Double(intervalValue.text!)!
            timer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(ViewController.updateCounter), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func pause(_ sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

