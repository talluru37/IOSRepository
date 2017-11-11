//: Playground - noun: a place where people can play


/* Optionals come into play when a "Well defined data doesn't ensure a value. Ex: When user tries to download and store an image from cloud but lost network"*/



//********************* INITITALIZATION *********************//
// In Swift Valiables and Constants are not automatically initialized to default values. It makes Swift more SAFE//
 
//let message: String
//let elementWeight: Double
//var total: Int
//var bonus: Int
//
//print(message)
//********************* DECLARING OPTIONALS *********************//
// var message: String? // Now, message is not just String but an OPTIONAL STRING. It would either contain a Integer value ot NOTHING (not ZERO but NOTHING)
//var elementWeight: Double
//var total: Int
//var bonus: Int

//********************* USING OPTIONALS *********************//

var regularInt: Int
var optionalInt: Int?
var age: Int!

let optionalFloat: Float?
//
////Can set values in the same way
//regularInt = 5
//optionalInt = 5
//
////Assiging nil
////regularInt = nil
////optionalInt = nil
//
////Difference comes while performing some operation
//regularInt = regularInt + 5
//optionalInt = optionalInt! + 5

//********************* UNWRAPPING OPTIONALS *********************//
// 1. It is the extra step we must do to get to the value
// 2. There is one question we always have to ask when we have an optional anything - Is the optional nil or not nil
// 3. If the optional is not nil then we can rach in and pull out the value. It is called Unwrapping
// 4. NOTE: WE ONLY WANT TO UNWRAP WHEN THERE ACTUALLY IS A VALUE

// 1ST Way to unwrap

if optionalInt != nil{ // STEP 1: Check for nil
    var unwrappedInt = optionalInt! //STEP 2: Force Unwrapping
}
//NOTE: FORCIBLY UNWRAPPING AN OPTIONAL THAT'S nil IS A RUNTIME ERROR

// 2nd Way to unwrap - OPTIONAL BINDING

if let unwrappedInt = optionalInt{ // STEP 1: Check for nil
    print(unwrappedInt)
}

//********************* KEYS *********************//

// 1. null is different from nil. null usually applicable for Objects or Object References
// 2. In Swift we can have optionals of any types(Optional Int, Optional BOOL, Optional Float, Optional String, Optional Objects, Optional Array, Optional Image, Optional Buttons etc..,)
// 3.
