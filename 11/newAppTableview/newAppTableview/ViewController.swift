//
//  ViewController.swift
//  newAppTableview
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,ColorTwoViewControllerDelegate{

    @IBOutlet var colorLabe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller: ColorTwoViewController, text: String) {
        colorLabe.text = "Co:" + text
        controller.navigationController?.popViewControllerAnimated(true)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue"{
           let vc = segue.destinationViewController as ColorTwoViewController
            vc.colorString = colorLabe.text!
            vc.delegate = self
        }
    
    }

    

}

