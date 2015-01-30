// Playground - noun: a place where people can play


import UIKit

class room {
    var room: [String: String] = ["couch" : "sheeting","wardrobe" : "clothing","latrine" : "water tower"]
    
    let room1: String
    
    init(room:String){
        self.room1 = room
    }
    func roomm() -> String{
        var anser:String = ""
        for (key,value) in room{
            if(key == room1){
             anser = value
            }
        }
        return "\(room1)  is \(anser)"
    }
    func Addroom(roomadd:String, composition:String) {
        room[roomadd] = composition
        
    }
    
}
let room1 = room(room: "couch")
room1.roomm()
room1.Addroom("latrine" , composition: "water tower")
