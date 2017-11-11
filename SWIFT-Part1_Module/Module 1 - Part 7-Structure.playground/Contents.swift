//: Playground - noun: a place where people can play

// Structure
/*
 1. Structures are incredibly important and used everywhere in Swift
 2. The datatypes(int,string,double,float,bool etc..,) we have used so far are all implemented as Structures
 3. Structures and classes are similar but not identical
 4. Simple definition of Struct - To give a group of relevant data a structure
 */

struct Movie {
    //properties
    var title: String
    var director: String
    var releaseYear: Int
    var genre: String
    
    //methods
    func summary() -> String{
        return("I am just gonna print the title -> \(title)")
    }
}

var first = Movie(title: "Arrival", director: "Denis villeneuve", releaseYear: 2016, genre: "Science Fiction") //Memberwise Initializer - To make sure that when I create something of this type I initialize all this internal member value

//We can create multiple instance

var second = Movie(title: "Sing Street", director: "John Carney", releaseYear: 2017, genre: "Comedy Musical")

//Accessing Individual property
print(first.title)
print(second.title)

//Assinging new values - Since it is a variable
second.releaseYear = 2016

print(first.summary())
print(second.summary())

//Note: Structures are Value Types / Classes are Reference Types
