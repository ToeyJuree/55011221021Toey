// Playground - noun: a place where people can play
class KeepUsername{
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
    func Adduser(userAdd:String, passAdd:String){
        Userpass[userAdd] = passAdd
        
    }
    func Del(userdel:String){
        Userpass[userdel] = nil
        
    }
    func Edituser(useredit:String, passedit:String){
        Userpass[useredit]=passedit
    }
    
    
}
let keeppass = KeepUsername(KeepUser : "MMM")
keeppass.keepUserpass()
keeppass.Adduser("MMM", passAdd: "1234")
keeppass.Del("Kung")
keeppass.Edituser("mild", passedit: "91011")