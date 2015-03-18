//
//  data.swift
//  newAppProject
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<balloon> {
        var tempArray = Array<balloon>()
        let b1 = balloon(bImage: UIImage(named: "Comsci.png"), bName: "สาขาวิทยาการคอมพิวเตอร์")
        tempArray.append(b1)
        
        let b2 = balloon(bImage: UIImage(named: "it.png"), bName: "สาขาเทคโนโลยีสารสนเทศ")
        tempArray.append(b2)
        
        let b3 = balloon(bImage: UIImage(named: "mnd.png"), bName: "สาขาคอมพิวเตอร์แอนิเมชันและเกม")
        tempArray.append(b3)
        
        let b4 = balloon(bImage: UIImage(named: "GIS.png"), bName: "สาขาภูมิสารสนเทศ")
        tempArray.append(b4)
        
        let b5 = balloon(bImage: UIImage(named: "is1.png"), bName: "สาขาสารสนเทศศาสตร์")
        tempArray.append(b5)
        
        let b6 = balloon(bImage: UIImage(named: "mc1.png"), bName: "สาขานิเทศศาสตร์")
        tempArray.append(b6)
        
        return tempArray
        
        
    }
    
}