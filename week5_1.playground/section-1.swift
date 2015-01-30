// Playground - noun: a place where people can play

import UIKit

var str = "calculator"
class calcul {
    let n1: Double
    let n2: Double
    
    init(n1: Double, n2: Double){
       self.n1 = n1
       self.n2 = n2
    }
    func number(no:String){
        if (n1>0 && n2<100){
            var answer: Double
            
            if (no == "+"){
              answer = n1+n2
              println("\(n1) + \(n2) = \(answer)")
                
            }
            else if (no == "-"){
              answer = n1-n2
              println("\(n1) - \(n2) = \(answer)")
                
            }
            else if (no == "*"){
              answer = n1*n2
              println("\(n1) * \(n2) = \(answer)")
                
            }
            else if (no == "/"){
              answer = n1/n2
              println("\(n1) / \(n2) = \(answer)")
            }
            
        }
        else{
          
            println("is n1-100")
        }
        
        
    }
}
let score = calcul(n1: 12, n2: 13)
score.number("+")
