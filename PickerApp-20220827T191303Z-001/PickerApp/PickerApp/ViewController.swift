//
//  ViewController.swift
//  PickerApp
//
//  Created by Lankford, Michael A on 6/21/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return values.count
        }
        return values2.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return values[row]
        }
        return values2[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            message.text = values[row] + " " + String(describing: selectedDate.date)
        }else{
            message.text = values2[row] + " " + String(describing: selectedDate.date)
        }
    }
    
    @IBAction func modifyMessage(_ sender: UIDatePicker) {
        message.text = values[selectedRow] + " " + String(describing: selectedDate.date)    }
    
    
    var values = ["UHCL", "UH", "TAMU", "UT", "TTU", "Rice", "TSU", "UTO"]
    var values2 = ["UHCL2", "UH2", "TAMU2", "UT2", "TTU2", "rice2", "TSU2", "UTO2"]

    var selectedRow: Int = 0
    
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var selectedDate: UIDatePicker!
    
    @IBOutlet weak var college: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.college.delegate = self
        self.college.dataSource = self
        // Do any additional setup after loading the view.
    }


}

