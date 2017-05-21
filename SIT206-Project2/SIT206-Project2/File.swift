//
//  File.swift
//  project 2
//
//  Created by NHAN QUANG LU on 18/05/2017.
//  Copyright © 2017 NHAN QUANG LU. All rights reserved.
//

import Foundation
import UIKit
class Restaurant {
    var Restname : String
    var Reststar : Int
    var RestBest : String
    var Restaddress : String
    var Restimg  : UIImage
    init ( name : String, star : Int, best : String , address : String, img : UIImage)
    {
        self.Restname = name
        self.Reststar = star
        self.RestBest = best
        self.Restaddress = address
        self.Restimg = img
    }
}
