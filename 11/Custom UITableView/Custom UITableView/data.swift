//
//  data.swift
//  Custom UITableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getdata() -> Array<balloon> {
    var tempArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "green.png"), bName: "green")
        tempArray.append(b1)
        let b2 = balloon(bImage: UIImage(named: "red"),bName: "red")
        tempArray.append(b2)
        let b3 = balloon(bImage: UIImage(named: "white.png"), bName: "white")
        tempArray.append(b3)
        let b4 = balloon(bImage: UIImage(named: "yellow.png"), bName: "yellow")
        tempArray.append(b4)
        let b5 = balloon(bImage: UIImage(named: "orange"), bName: "orange")
        tempArray.append(b5)
        let b6 = balloon(bImage: UIImage(named: "pink.png"), bName: "pink")
        tempArray.append(b6)
        let b7 = balloon(bImage: UIImage(named: "blue.png"), bName: "blue")
        tempArray.append(b7)
        
        return tempArray
    }
}
