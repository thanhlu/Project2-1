//
//  FeedBackViewController.swift
//  SIT206-Project2
//
//  Created by THUAN THANH LU on 21/05/2017.
//  Copyright © 2017 NHAN QUANG LU. All rights reserved.
//

import UIKit

class FeedBackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var text: UITextView!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var name: UITextField!
    @IBAction func submit(_ sender: AnyObject) {
        if text.text == "" || name.text == "" || email.text == "" {
            let alertController = UIAlertController(title: "Message", message: "Invalid", preferredStyle: .alert)
            
            self.present(alertController, animated: true, completion:nil)
            
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
                
            }
            
            alertController.addAction(OKAction)
            
            
        }
        else {
            let alertController = UIAlertController(title: "Message", message: "Thanks for your feedback", preferredStyle: .alert)
            
            self.present(alertController, animated: true, completion:nil)
            
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
                
            }
            
            alertController.addAction(OKAction)
            
        }
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
