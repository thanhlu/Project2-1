//
//  RestautantTableViewController.swift
//  project 2
//
//  Created by NHAN QUANG LU on 18/05/2017.
//  Copyright © 2017 NHAN QUANG LU. All rights reserved.
//

import UIKit
class RestautantTableViewController: UITableViewController {
    var selectedIndex : Int = 0
    var restaurants : [Restaurant] = [
        Restaurant(name : "China bar", star : 3, best : "BBQ pork" , address : "City", img : UIImage ( named: "china")!),
        Restaurant(name : "Old Kingdom", star : 5, best : "Perking duck" , address : "Surrey Hill", img : UIImage ( named: "Old")!),
        Restaurant(name : "I Luv pho", star : 2, best : "Pho" , address : "Richmond", img : UIImage ( named: "pho")!),
        Restaurant(name : "My Goodness", star : 5, best : "Pizza" , address : "Doncaster", img : UIImage ( named: "pizza")!),
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = restaurants[indexPath.row].Restname
        cell.detailTextLabel?.text = "Address : \(restaurants[indexPath.row].Restaddress)   Overview :\(restaurants[indexPath.row].Reststar) stars   Best :\(restaurants[indexPath.row].RestBest)"
        cell.imageView?.image = restaurants[indexPath.row].Restimg
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "Restsegue"{
            (segue.destination as! RestarantInfoTableViewController).selectRest = restaurants[selectedIndex]
            
        }
        
    }
}
