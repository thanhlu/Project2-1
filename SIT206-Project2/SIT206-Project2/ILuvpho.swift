//
//  ChinaBar.swift
//  project 2
//
//  Created by NHAN QUANG LU on 18/05/2017.
//  Copyright © 2017 NHAN QUANG LU. All rights reserved.
//

import UIKit
import MapKit
class ILuvpho: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let distanceSpan:CLLocationDegrees = 2000
        let bsuCSCampusLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(-37.810085, 144.995341)
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(bsuCSCampusLocation, distanceSpan, distanceSpan),animated: true)
        let bsuCSClassPin = Mapkit(name: "I luv pho", rating: 3, coordinate: bsuCSCampusLocation)
        mapView.addAnnotation(bsuCSClassPin)
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
            let alertController = UIAlertController(title: "Message", message: "Thanks for your review", preferredStyle: .alert)
            
            self.present(alertController, animated: true, completion:nil)
            
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
                
            }
            
            alertController.addAction(OKAction)
            
        }
    }
    
    
    @IBOutlet var starButtons: [UIButton]!
    
    @IBAction func starButtonTapped(_ sender: UIButton) {
        
        let tag = sender.tag
        for button in starButtons{
            if button.tag <= tag {
                button.setTitle("★", for: .normal)
            } else{
                button.setTitle("☆", for: .normal)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
