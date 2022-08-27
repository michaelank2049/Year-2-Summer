//
//  WelcomeViewController.swift
//  Assignment4
//
//  Created by Lankford, Michael A on 7/24/21.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var username: UITextField!       // Variable declaration
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc1 = segue.destination as? UITabBarController
        let res = vc1!.viewControllers!.first as! SpeedTestViewController       // Sends userName to SpeedTestViewController when segue is done
        res.uName = username.text!
    }
    

}
