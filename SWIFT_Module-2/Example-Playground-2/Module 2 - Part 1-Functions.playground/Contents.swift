//: Playground - noun: a place where people can play

//Functions

//Syntax

func showMessage(){ //Parentheses are required
  print("The function call worked")
}

showMessage() //Calling function

//With single parameter
func showThisMessage(number:Int){ // The function now takes single parameter
    print("The function call worked \(number)") //String Interpolation
}

showThisMessage(number: 45) //Calling function - In Swift by default whatever name is used for parameter when function is defined also used again on every single call to that function

//Refer Built-in Stride function we saw already, which is function defined with 3 parameters
// In Swift each arguments has its own label

//Multiple Parameters

func showThisBigMessage(number:Int, name:String){ // The function now takes two parameters
    print("The function call worked \(number) and name \(name)") //String Interpolation
}

showThisBigMessage(number: 24, name: "Test")

//Note: Any parameter passed into a Swift function is treated as a constant not a variable. In that function they are mutable values

func changeNumber(number:Int){
    //number = number+5 // Can't change it
    //So assign it to new temp var and use it
    var temp = number
    temp = temp + 5
    print("The function call worked \(number)")
    print("The function call worked \(temp)")
}

//Return Values
/*
 1. Unlike many programming language return type will come after the name and parameters in Swift
 */
func basicFunction() -> String{
    let str = "This is a simple function"
    return(str)
}

let result = basicFunction() //Automatically Type Inferred by Swift

//_ = basicFunction()

//print(basicFunction())

//Function Type => (parameter_type) -> return_type

//example functions
//playmp3(filename: String) -> Bool{}
//playOGG(oggFile: String, t:Int) -> Bool{}
//showImage(at url: String) -> Bool{}
//loadVector(_ url: String) -> Bool{}

//Function type of all the above functions is

//(String) -> Bool

//For function which is not returning any value
//(String) -> Void

//For function which is not taking any parameter and returning any value
//() -> Void

// Note: We will use this in Closures

//Ignoring returned value

/*
 1. A functions call that ignores the result will work okay in playground but generate a warning on Xcode
 2. If you don't want the result, inspite of using a dummy variable use _
 */

//Customizing argument labels - In two ways

/*
 1. We can make it so a label is not required when calling a function
 2. We can change it so we can use a different name outside the function from the name we use inside it
 */

func showText(_ message:String){ // Add _ with space. Can be done for multiple/all parameters
    print("The text passed was \(message)")
}

//call
showText("test") // You cannot use the label here

//Note: Using argument label is good practice - Better understanding

//Example 2: Changing parameter label by adding argument label

func calculateDifferece(from firstAmount: Int, to secondAmount: Int) -> Int{
    
    if firstAmount > secondAmount{
        return firstAmount - secondAmount
    }else{
        return secondAmount - firstAmount
    }
}

let resulty = calculateDifferece(from: 20000, to: 1000)
print(resulty)

// Here .. from is argument label and firstAmount is parameter label

//How to give good meaningful names to function

/*
  1. Function name together with argument label make more sense
 */

func showMessage(message: String){
    
}
func show(message: String){
    
}

// typeof(somevariables) in other language but in swift it is 
type(of: result)

//stride is another example


//Using InOut - If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended, define that parameter as an in-out parameter instead.
//You place an ampersand (&) directly before a variable’s name when you pass it as an argument to an in-out parameter, to indicate that it can be modified by the function.

func swapper(a:inout Int, b:inout Int){
//func swapper(a:Int, b:Int){
    var temp = a
    a = b
    b = temp
}

var a = 10
var b = 20

swapper(a: &a, b: &b)
//swapper(a: a, b: b)
print("a is \(a) and b is \(b)")
