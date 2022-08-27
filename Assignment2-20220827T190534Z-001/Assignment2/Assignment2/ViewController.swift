//
//  ViewController.swift
//  Assignment2
//
//  Created by Lankford, Michael A on 7/2/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return values.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return values[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0{
            binaryResult.isHidden = false
            decimalResult.isHidden = true
            hexResult.isHidden = true
            octalResult.isHidden = true
            let numberType = Int(numType.selectedSegmentIndex)
            let numberAmount = numAmount.text!
            binaryConvert = BinaryConvert(numberType: numberType, numberAmount: numberAmount)
            let result = binaryConvert.convertToBinary()
            binaryResult.text = String(result)
        }
        else if row == 1{
            decimalResult.isHidden = false
            binaryResult.isHidden = true
            hexResult.isHidden = true
            octalResult.isHidden = true
            let numberType = Int(numType.selectedSegmentIndex)
            let numberAmount = numAmount.text!
            decimalConvert = DecimalConvert(numberType: numberType, numberAmount: numberAmount)
            let result = decimalConvert.convertToDecimal()
            decimalResult.text = String(result)
        }
        else if row == 2{
            hexResult.isHidden = false
            binaryResult.isHidden = true
            decimalResult.isHidden = true
            octalResult.isHidden = true
            let numberType = Int(numType.selectedSegmentIndex)
            let numberAmount = numAmount.text!
            hexConvert = HexConvert(numberType: numberType, numberAmount: numberAmount)
            let result = hexConvert.convertToHex()
            hexResult.text = String(result)
        }
        else if row == 3{
            octalResult.isHidden = false
            binaryResult.isHidden = true
            decimalResult.isHidden = true
            hexResult.isHidden = true
            let numberType = Int(numType.selectedSegmentIndex)
            let numberAmount = numAmount.text!
            octalConvert = OctalConvert(numberType: numberType, numberAmount: numberAmount)
            let result = octalConvert.convertToOctal()
            octalResult.text = String(result)
        }
        else if row == 4{
            binaryResult.isHidden = false
            decimalResult.isHidden = false
            hexResult.isHidden = false
            octalResult.isHidden = false
            var numberType = Int(numType.selectedSegmentIndex)
            var numberAmount = numAmount.text!
            binaryConvert = BinaryConvert(numberType: numberType, numberAmount: numberAmount)
            var result = binaryConvert.convertToBinary()
            binaryResult.text = String(result)
            decimalConvert = DecimalConvert(numberType: numberType, numberAmount: numberAmount)
            result = decimalConvert.convertToDecimal()
            decimalResult.text = String(result)
            hexConvert = HexConvert(numberType: numberType, numberAmount: numberAmount)
            result = hexConvert.convertToHex()
            hexResult.text = String(result)
            octalConvert = OctalConvert(numberType: numberType, numberAmount: numberAmount)
            result = octalConvert.convertToOctal()
            octalResult.text = String(result)
        }
    }
        
    @IBAction func prssToEnter(_ sender: UIButton) {
        img.isHidden = true
        welcomeLabel.isHidden = true
        enterButton.isHidden = true
        
        resetButton.isHidden = false
        numType.isHidden = false
        innerView.isHidden = false
        numResult.isHidden = false
        innerView2.isHidden = false
        binaryResult.isHidden = true
        decimalResult.isHidden  = true
        hexResult.isHidden = true
        octalResult.isHidden = true
    }
    
    var values = ["Display in Binary", "Display in Decimal", "Display in Hex", "Display in Octal", "Display in all 4 bases"]
    var binaryConvert: BinaryConvert!
    var decimalConvert: DecimalConvert!
    var hexConvert: HexConvert!
    var octalConvert: OctalConvert!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var numType: UISegmentedControl!
    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var changeNum: UIStepper!
    @IBOutlet weak var numAmount: UITextField!
    @IBOutlet weak var numResult: UIPickerView!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var innerView2: UIView!
    @IBOutlet weak var binaryResult: UILabel!
    @IBOutlet weak var decimalResult: UILabel!
    @IBOutlet weak var hexResult: UILabel!
    @IBOutlet weak var octalResult: UILabel!
    
    @IBAction func modifyNumber(_ sender: Any) {
        if numType.selectedSegmentIndex == 0{
            let numvalue = Int(changeNum.value)
            numAmount.text = String(numvalue, radix: 2)
        }
        else if numType.selectedSegmentIndex == 1{
            let numvalue = Int(changeNum.value)
            numAmount.text = String(numvalue, radix: 16)
        }
        else if numType.selectedSegmentIndex == 2{
            let numvalue = Int(changeNum.value)
            numAmount.text = String(numvalue, radix: 8)
        }
        else if numType.selectedSegmentIndex == 3{
            let numvalue = Int(changeNum.value)
            numAmount.text = String(numvalue, radix: 10)
        }
    }

    
    @IBAction func pressToReset(_ sender: UIButton) {
        img.isHidden = false
        welcomeLabel.isHidden = false
        enterButton.isHidden = false
        
        numType.isHidden = true
        innerView.isHidden = true
        numResult.isHidden = true
        resetButton.isHidden = true
        innerView2.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = UIImage(named: "number-systems.png")
        numType.isHidden = true
        innerView.isHidden = true
        numResult.isHidden = true
        resetButton.isHidden = true
        innerView2.isHidden = true
        self.numResult.delegate = self
        self.numResult.dataSource = self
        changeNum.autorepeat = true
        // Do any additional setup after loading the view.
    }
}
