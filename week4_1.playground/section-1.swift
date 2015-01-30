// Playground - noun: a place where people can play

import UIKit

class room {
    let roomm: [String: String] = ["couch" : "sheeting","wardrobe" : "clothing","latrine" : "water tower"]
    let room1: String
    
    init(roomm:String){
       self.room1 = roomm
    }
    func roommy() -> String{
        var anser:String = ""
        for (key,value) in roomm{
            if(key == room1){
                anser = value;
            }
        }
        return "\(room1) eat \(anser)"
    }
    
    
   }
}

let room1 = room(roomm: "couch")
room1.roommy()
room1.Addroom("latrine" , composition: "water tower")
