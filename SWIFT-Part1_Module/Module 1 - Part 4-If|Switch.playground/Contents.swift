//: Playground - noun: a place where people can play

// If Statement

/* Normal if statement */

var score = 100
if (score > 10){
    print("It is greater than 10")
}else{
    print("It is not greater than 10")
}

/* Swifty Syntax
 1. Parentheses aren't required - To make our code simpler
 2. Curly Braces are required - To make our code safer
 */

if score > 10{
    print("It is greater than 10")
}

//Normal SWITCH STATEMENT

var abbrev = "GB" //... or "KB" or "GB" or "TB", etc

switch abbrev{   //later
    case "KB":
        print("kilobyte")
    case "MB":
        print("megabyte")
    case "GB":
        print("gigabyte")
    case "TB":
        print("terabyte")
    case "PB":
        print("petabyte")
    case "EB":
        print("exabyte")
    default:
        print("Not a recognized abbreviation")
}

print("😆")
/* Swifty Syntax
 1. Parentheses aren't required around the variable (abbrev) as we do in some programming languages
 2. Tip: You can include symbols/emoji (Edit -> Symbols/Emojis)😎
 3. In Swift, a switch must be exhaustive - Which means "All possibilities must be covered in Swift" by using 'default' case
 4. In Swift, each case must include atleast one executable line of code - no automatic fallthrough
 5. In Swift we do not need a break statement at the end of each case
 6. In Swift we can write one case which can take multiple values (Ex: case 1,2,3:)/(Ex: case EX,Ex,ex:)
 7. Range operator is allowed - case 1...3 - 1 to 3 including 1 and 3
 */

