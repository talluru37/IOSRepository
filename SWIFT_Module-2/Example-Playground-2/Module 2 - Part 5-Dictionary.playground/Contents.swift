//: Playground - noun: a place where people can play

import UIKit
//Dictionory

var declareDict : [String:String] //Type Annotation

var capitals = [
    "中国" : "北京",
    "Italy": "Rome",
    "United States": "Washington D.C."
]
capitals["中国"]
capitals["Kenya"]

//Unsafe
let rome = capitals["Italy"]
print(rome) //It may or maynot have value

//Safe
if let rome = capitals["Italy"] {
    print(rome)
}

//add or change
capitals["United Kingdom"] = "London"
capitals

//Iterate through values
for entity in capitals{
    print(entity)
}
//Using Tuple 
for (key,value) in capitals{
    print(value)
}

capitals.updateValue("Milan", forKey: "Italy")
capitals["Italy"]
capitals

capitals.updateValue("Rome", forKey: "Italy")
capitals["Italy"]
capitals

capitals.removeValue(forKey: "United States")
capitals

capitals.removeValue(forKey: "France")
capitals.count

let keys = capitals.keys
let values = capitals.values

Array(keys)
Array(values)

capitals == [
    "中国" : "北京",
    "Italy": "Rome",
    "United States": "Washington D.C."
    
]

var capitals2 = capitals

capitals2.removeValue(forKey: "Italy")
capitals == capitals2

// Parsing
//{
//    "mainKey" : {
//        "name": "Caffè Macs",
//        "coordinates": {
//            "lat": 37.330576,
//            "lng": -122.029739
//        },
//        "meals": ["breakfast", "lunch", "dinner"]
//}


