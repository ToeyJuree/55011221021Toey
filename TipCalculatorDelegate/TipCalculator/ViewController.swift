//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal:Double
    
    init(total:Double,taxPct:Double){
        self.total=total
        self.taxPct=taxPct
        subtotal=total/(taxPct+1)
    }
    func calcTipWithTipPct(tipPct:Double) ->Double{
        return subtotal * tipPct
    }
    
    func returnPossibleTip() -> [Int: Double] {
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit : [Double] = [0.15,0.18,0.20]
        
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            
            retval[intPct]=calcTipWithTipPct(possibleTip)
            
        }
        return retval
    }
}
