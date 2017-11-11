//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Address {
    var streetAddress: String = ""
    var city: String = ""
    var state: String = ""
    var postalCode: String = ""
}

class Person {          // Reference type
    var name: String      // Value type
    var address: Address  // Value type
    
    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
}

var adType = Address()
var p1 = Person(name: "test", address: adType)

var p2 = Person(name: "testTwo", address: adType)

p1.address.city = "p1City"
p2.address.city = "p2City"

p1.address.city
p2.address.city
