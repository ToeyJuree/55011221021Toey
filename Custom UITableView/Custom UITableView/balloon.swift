//
//  balloon.swift
//  Custom UITableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
import UIKit

struct balloon {
    var balloonImage: UIImage
    var blloonName: String
    
    init (bImage: UIImage,bName: String){
        self.balloonImage = bImage
        self.blloonName = bName
    }
}