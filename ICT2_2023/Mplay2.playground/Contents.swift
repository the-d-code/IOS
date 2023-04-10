import UIKit
//Swift Collections

//Array

/*
//var nums:Array<Int>=[1,2,3,4]
var nums:Array<String>=["Bharat", "Manish", "Ravi"]
//print(nums.isEmpty)
//print(nums.count)
nums.append("Aakash")
nums.remove(at: 1)
for i in nums
{
    print(i)
}
*/


//Dictionary
/*
var d = Dictionary<String, String>()
d = ["123":"Manish", "234":"Bharat"]
//print(d)
//print(d.keys)
//print(d.values)
//d.updateValue("Ravi", forKey: "123")
//d.removeValue(forKey: "234")
for i in d
{
    print(i)
}

*/


//Set
var s1 = Set<Int>()
var s2 = Set<Int>()
s1=[2,4,8,6,10]
s2=[1,2,3,4,6]

//print(s)
//print(s.isEmpty)
//print(s.count)
//print(s1.union(s2))
//print(s1.intersection(s2))
print(s2.subtracting(s1))
