//
//  RestarantInfoTableViewController.swift
//  project 2
//
//  Created by NHAN QUANG LU on 18/05/2017.
//  Copyright © 2017 NHAN QUANG LU. All rights reserved.
//

import UIKit

class RestarantInfoTableViewController: UITableViewController {
    var selectRest : Restaurant?
    @IBOutlet weak var Addresses: UITextField!
    
    @IBOutlet weak var best: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    override func viewWillAppear(_ animated: Bool) {
        if selectRest != nil {
            Addresses.text = "Address"
            best.text     = " Restaurant"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
