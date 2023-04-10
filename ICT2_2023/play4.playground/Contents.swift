import UIKit
/*
class abc
{
    func show()
    {
        print("welcome....")
    }
}
class xyz: abc {
    override func show() {
        print("iOS Prog...")
    }
}
var a:Int=2
if a==1
{
    let obj=xyz()
    obj.show()
}
if a==2
{
    let obj=abc()
    obj.show()
}
*/


/*
protocol pro1
{
    func show()
}
protocol pro2
{
    func disp()
}

class abc:pro1,pro2{
    func show() {
        do {
            print("show method of pro1..")
        }
    }
    func disp() {
        print("disp method of pro2.....")
    }
}
var obj=abc()
obj.show()
obj.disp()
*/

class abc{
    func show()
{
    print("show method..")
}
}
extension abc
{
    func disp()
    {
        print("disp method...")
    }
}
var obj=abc()
obj.show()
obj.disp()
