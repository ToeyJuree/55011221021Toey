//
//  ColorTwoViewController.swift
//  newAppTableview
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}

class ColorTwoViewController: UIViewController {
    var delegate:ColorTwoViewControllerDelegate? = nil
    
    var colorString = ""
    
    
override func viewDidLoad(){
        super.viewDidLoad()
//        colorLabel.text = colorString
    

    
    }

    @IBOutlet var titlelabel: UILabel!
    
    
    
    
    @IBOutlet var colorLabel: UILabel!
    
   
    
    @IBAction func colorSelectionButton(sender: AnyObject) {
        colorLabel.text = sender.titlelabel!.text
        
    }
    
    @IBAction func saveColor(sender: AnyObject) {
        
        if (delegate != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
    }
}
