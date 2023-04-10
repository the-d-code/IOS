import UIKit

class abc
{
    var fname:String?
    var lname:String?
    var full:String?
    init(fn:String, ln:String)
    {
        self.fname=fn
        self.lname=ln
         }
    init(fullname:String)
    {
        self.full=fullname
    }
    func show()
    {
        print("Welcome \(fname!)  \(lname!)")
    }
    func disp()
    {
        print("Welcome \(full!)  ")
    }
    
    
}
class xyz: abc {
  override  func show()
    {
        print("Welcome to iOS...")
    }
}
var obj=abc(fn: "Manish", ln: "Patel")
var obj2=xyz(fullname: "Bharat Patel")
obj.show()
obj2.disp()
obj2.show()
