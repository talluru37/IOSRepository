//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//************* Variables and Constants ****************//

/* 1.SWIFT is TYPE SAFE
   2.NO implicit type conversion in SWIFT
   3. ":" means 'is of Type'
   4. Semicolon is not mandatory
*/

// The only way to declare a Variable in swift is using Var keyword
//**************** Type Inference ****************
var playerName = "Ava"          //SWIFT knows this one's obviously a string
var editsPermitted = true       //SWIFT knows this one's obviously a boolean
var maximumPixelWidth = 3840    //SWIFT knows this one's obviously a integer

//**************** Type Annotation ****************
var stringName: String  //What if you don't know the value at this point
var boolName: Bool
var integerName: Int

//**************** Annotation & Inference ****************
var stringNames: String = "Ava" //There is no point in it

//**************** Complex Types ****************
//URL, File, Button, Document, Image, Date -- We get access to these by importing additional frameworks

//The only way to declare a constant in Swift is using LET
//**************** Constants ****************
let constString = "Hi"          //You can set the value only once

//constString = "Bye"

func message() {
    let text = "Good Morning"   //It's a good practise to use LET for safer code
    print("Hi \(text)") // \()
}

message()
//**************** Implicit Type Conversion ****************

//let a = 5
//let b = 2
//
//let result = a/b
//
//type(of: result)

//let a = 5.0
//let b = 2.0
//
//let result = a/b
//
//type(of: result)

//What if I want the imputs to be Int but Output to be Float
//let a = 5
//let b = 2
//
//let result: Double = a/b //No implicit conversion
//
//type(of: result)

//Another exmaple

//var first = 10
//var second = 5.0
//
//second = first // It will work fine on most of the other programming languages

//**************** Explicit Type Conversion ****************

var first = 10
var second = 5.0

second = Double(first) // In other languages it will be decided by itself which might cause data loss

//**************** Not all Conversions are the same ****************

/* 1. Can't convert any type to any other type (Ex: Bool to Double)
   2. Conversions can still loose information (Ex: Float to Int)
   3. Not all conversion succeed (Ex: String to Int) - Allowed but unexpected result if the stirng value is not number
 */

