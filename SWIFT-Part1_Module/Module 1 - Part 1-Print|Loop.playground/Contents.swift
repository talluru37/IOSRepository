//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//************* Print ****************//
print("First Test Print")
//The default terminator for print is the newline "\n".
print("First Test Print",terminator:"")


//************* For Loop ****************//
var x = 10
for index in 1...20{
    x = x-1
  let y = index * x
    print(y)
}


//************* Creating UI Object ****************//
let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
myLabel.backgroundColor = UIColor.red
myLabel.text="Test"