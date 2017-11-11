//: Playground - noun: a place where people can play

// If Statement

/* Loops - Only 3 ways to do this in Swift */

// While loop 

/* 1. Similar to if
   2. braces required
   3. parentheses optional
 */

//while 200 > 100{
//    print("test")
//}

//do-while loop -> renamed as repeat-while

/* 1. Similar to while
 2. executed at least once
 3. parentheses optional, braces required
 */
//repeat {
//    print("test")
//}while 100>0

//For loop

/*
 1. Normal initialization-condition-increment syntax is not allowed here
 2. For in loop - more powerful and simple
 */

let bundleOfWords = ["Flower","Fruit","Tree","Mountain","Seed","value"]

for nameit in bundleOfWords {
    //if namtit != nil
    print(nameit)
}
//Using closed range operator
//for number in 1...90 {
//    print(number)
//}

//for number in 1..<90 { //Half open range operator
//    print(number)
//}

//Strides - To go in reverse and To take longer step

//for number in stride(from: 2, to: 10, by: 2) {
//    print(number)
//}


//for number in stride(from: 2, through: 10, by: 3) {
//    print(number)
//}

//String Interpolation - \()





