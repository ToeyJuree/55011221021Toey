// Playground - noun: a place where people can play
class Username{
    var Userpass : [String:String] = ["MMM" : "1234", "Kung" : "5678", "mild" : "91011"]
    let User:String
    
    init(KeepUser:String){
        self.User = KeepUser
    }
    func keepUserpass() ->String {
        var Keeper:String = ""
        for (key,value) in Userpass{
            if(key == User){
                Keeper=value
            }
        }
        return Keeper
    }
    func Add(userAdd:String, passAdd:String){
        Userpass[userAdd] = passAdd
        
    }
    func Del(userdel:String){
        Userpass[userdel] = nil
        
    }
    func Edit(useredit:String, passedit:String){
        Userpass[useredit]=passedit
    }
    
    
}
let testkeep = Username(KeepUser : "MMM")
testkeep.keepUserpass()
testkeep.Add("MMM", passAdd: "1234")
testkeep.Del("Kung")
testkeep.Edit("mild", passedit: "91011")
