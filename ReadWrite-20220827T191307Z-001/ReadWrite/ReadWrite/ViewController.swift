//
//  ViewController.swift
//  ReadWrite
//
//  Created by Lankford, Michael A on 7/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    var filemgr: FileManager!
    var counter = 0
    
    @IBAction func readFile(_ sender: UIButton) {
        let path = NSHomeDirectory() + "/Documents/data.txt"
        if filemgr.fileExists(atPath: path){
            if let text = try? String(contentsOfFile: path, encoding: String.Encoding.utf8){
                result.text = text
                let lines = text.components(separatedBy: "\n")
                print(lines[0])
//                do{
//                    try filemgr.removeItem(atPath: path)
//                }
//                catch _ {
//                    
//                }
            }
            else{
                print("Error reading the file")
            }
        }else{
            print("Error opening file for reading")
        }
    }
    
    
    @IBAction func writeFile(_ sender: UIButton) {
        let path = NSHomeDirectory() + "/Documents/data.txt"
       // print(path)
        if !filemgr.fileExists(atPath: path){
            counter += 1
            let data = "Hello World \(counter) \n GoodBye World \(counter)"
            do{
                try data.write(toFile: path, atomically: false, encoding: String.Encoding.utf8)
            }
            catch _ {
                print("Error reading file")
            }
        }
        else{
            print("file exists")
            do{
                try filemgr.removeItem(atPath: path)
            }
            catch _ {
                    
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        filemgr = FileManager.default
    }


}

