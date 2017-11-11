//: Playground - noun: a place where people can play

//Tuples - A quick and simple way to group a few values together
/*
 1. To make a Tuple, just gather a few values put them in parentheses, seperated by commas
 2. Use it to return more than one value from a function
 3. It is not always required to name a Tuple, You can just group some values together
 4. Use it with dictionary
 */

//Making a Tuple
let cameraType = "Canon"
let photoMode = true
var shutterSpeed = 60
var iso = 640
var aperture = "f1.4"

var basicTuple = (aperture, iso, cameraType) //Tuple

//Can group literals, constants, variables
var nextTuple = ("String Literal", photoMode, basicTuple, 23124, true)

//Function returning Tuple

//func randomAlbum() -> (String,Int) {
func randomAlbum() -> (albumTitle:String, length:Int) {
    let title = "And in the endlwss pause"
    let duration = 2462
    
    return (title,duration) //Same order is must
}
//later...
let result = randomAlbum()
print(result)

//Decomposing the Tuple - Get directly to the value
print(result.0)

print(result.1)

//Friendlier option - Provide a name for each part of the Tuple
let results = randomAlbum()
print(result.albumTitle)
print(result.length)

//Decomposing in a single line - If you know you are getting tuple back from the method

let (nextTitle, length) = randomAlbum()
print(nextTitle)

//Variadic Parameter
func magic(num:Int...){
    print(num)
}

magic(num: 1)
magic(num: 1,2)


