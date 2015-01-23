// Playground - noun: a place where people can play

import UIKit


class password{
    let Username: [String] = ["Panda", "Crocodile", "Parakeet"]
    let password: [String] = ["1234", "M5678", "W91011"]
    let user:String
    
    init(Username: String){
        
        self.user = Username
    }
    func UserPass() -> String {
        var anser: String = ""
        for(var i=0; i < Username.count ; i++){
            if(Username[i] == user){
                anser = password[i];
            }
        }
        return anser
    }
    
}
let User1 = password(Username: "Panda")
User1.UserPass()
