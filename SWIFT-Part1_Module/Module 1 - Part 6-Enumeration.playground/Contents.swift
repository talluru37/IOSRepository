//: Playground - noun: a place where people can play

// Enumeration

/*
 1. It gives possibility to define our own data type
 2. We would like a piece of data that is more controlled which is limited to a specific set of possible options - This is what enums allows to do
 */


//
//enum MediaType { // In Swift data type begins with upper case
//    case book
//    case movie
//    case music
//    case game  //No limit.. We can create hundreds of variables/constants of type MediaType
//}
////
//var itemType: MediaType
//
//itemType = MediaType.book //or
//
//itemType = .music

//A great benifit of using enumeration type is, it is very straight forward to use it with Switch statement. Swift will understand all the possible cases this variable could be

//switch itemType {
//    
//case .book:
//    print("This is a book")
//case .movie:
//    print("This is a movie")
//case .music:
//    print("This is a music")
//case .game:
//    print("This is a game")
//}

//Enumeration: Raw Value - One type for the entire Enum
//enum BottleSize: String{ //String, Int, Double
//    case half = "37.5cl"
//    case standard = "75 cl"
//    case magnum = "1.5 litres"
//    case jeroboam = "3 litres"
//    case rehoboam = "4.5 litres"
//    case methuselah = "6 litres"
//    case balthazar = "12 litres"
//}

//var myBottle: BottleSize = .jeroboam //Creating variable from my Enum type and providing value for it
////
//print("Your \(myBottle) is \(myBottle.rawValue)") // Getting to raw value directly
//
////Enumeration: Associated Values - A type for each case
//
//enum MediaType {
//    case book(String)
//    case movie(String)
//    case music(Int)
//}
//
//var firstItem: MediaType = .movie("Comedy")//Creating variable from my Enum type and providing value for it
//var secondItem: MediaType = .music(24)

//Using associated value in Switch statement.. Follow the case with paranthesis and let

//switch firstItem {
//case .movie(let genre):
//    print("printing \(genre)")
//case .music(let bpm):
//    print("printing \(bpm)")
//default:
//    print("Default")
//}

/*
 1. Beyond raw values and associated values you can even add functionality to enum with properties and methods but those are not commonly used
 */
