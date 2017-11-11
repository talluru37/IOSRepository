//: Playground - noun: a place where people can play

import UIKit
//Class
class Appliance {
    //Properties
    var manufacturer: String = ""
    var model: String = ""
    var voltage: Int = 0
    var capacity: Int?
    
    //methods - A function written inside a class becomes the instance level method of that class
    func getDetails() -> String{
        var message = "This is the \(self.model) from \(self.manufacturer)" // self is not required here,swift can understand
        if self.voltage >= 220 { //Self -> Current instance : similar to me or this
            message += "This model is for European usage."
        }
        return message
    }
}

//Create instances of this class
let kettle = Appliance()
kettle
kettle.model = "new value"

//Use dot syntax to either access or change the property of the instance


//************************************ Class | Structure *****************************************//
//Structure has its memberwise initializer (class don't) - You can also add your own init()
//Class support inhertance but Struct don't
//Class is Reference Type [Value is not copied but reference is passed when assigning to var]| Struct(and Enum) is Value type [Value is copied when assigning to var]
//EX: STRING IS A STRUCT SO STRINGS ARE VALUE TYPE
class Person{
    var firstName: String
    var lastName: String
    
    //1. Default initializer don't have parameter
    //2. You can have multiple initializer for the same class
    
    
    func sampleFunc( paramOne: String, paramTwo: String){
        self.firstName = paramOne
        self.lastName = paramTwo
    }
    
    init(firstName:String,lastName:String){ //Special method - Similar to constructor | no need of func keyword
        self.firstName = firstName
        self.lastName = lastName
    }
    
//    init(firstName:String){ //
//        self.firstName = firstName
//        self.lastName = "test"
//    }
//    
//    init(){
//        self.firstName = "fnaame"
//        self.lastName = "test"
//    }
    
    //deinitializer - ARC (denit method gets called by itself)
    deinit {
        //perform cleanup code here..
        //release a file resource...
        //release a network resource..
    }
}

struct Dude {
    var firstName: String
    var lastName: String
    
    func sampleFunc( paramOne: String, paramTwo: String){
        self.firstName = paramOne
        self.lastName = paramTwo
    }
}

//let test1 = Person()
//test1
var p1 = Person(firstName: "Alex", lastName: "Miller")
p1.firstName = "Alice"
p1.sampleFunc(paramOne: "New Name", paramTwo: "Second Name")
let p2 = p1

print("p1 is \(p1.firstName)\(p1.lastName), p2 is \(p2.firstName)\(p2.lastName)")

p1.firstName = "Willaim"
p1.lastName = "Shakespeare"
print("p1 is \(p1.firstName)\(p1.lastName), p2 is \(p2.firstName)\(p2.lastName)")

let d1 = Dude(firstName: "Alex", lastName: "Miller")
d1.firstName = "Alice"
var d2 = d1
print("d1 is \(d1.firstName)\(d1.lastName), d2 is \(d2.firstName)\(d2.lastName)")

d1.firstName = "Willaim"
d1.lastName = "Shakespeare"

print("d1 is \(d1.firstName)\(d1.lastName), d2 is \(d2.firstName)\(d2.lastName)")

// Bits: Identity opeartor can be used to compare two instances of the classes " === "
