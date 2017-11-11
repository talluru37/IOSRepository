//: Playground - noun: a place where people can play

import UIKit
/* Protocol: Implementing existing task using set of rules
 1. In Swift Protocol == interface in other programming language
 2. In Swift Adopting protocol == implementing the interface in other language
 3. All Swift types(classes, Structs and enums) can implement protocol
 4. You can write your own Protocol
 5. Can't put enum/class/struct inside a protocol
 6. class MyClass: SomeSuperClass, SomeProtocol, OtherProtocol {...}
 7. Ex: UITableview delegate and datasource protocol
 */

class sample: CustomStringConvertible{
    //var description: String = "mandatory" // Stored
    
    
    var description: String { //Computed Property
        
        return "This will get printed everytime an instance is created"
    }
}

var instance = sample()
instance

/* 
 1.Stored Properties : Store individual values for each instance
 
 2.Computed Properties : Calculate value everytime we ask for it rather than internally storing them
 
 3. In following example 'Score' doesn't feel like a function it is a piece of data that needs to be calculated
 */

class Player{
    //Stored Properties
    var name:String
    var livesRemaining: Int
    var enemiesDestroyed: Int
    var penality: Int
    var bonus: Int
    
    //Computed Property
    var scrore: Int{
        get{ // If it only has get then it is read only computed property
           return (enemiesDestroyed * 1000) + bonus + (livesRemaining * 5000) - penality
        }
       // set{
            
       // }
        
    }// Instead of providing the value directly we are adding a code block
    init(name: String){
        self.name = name
        self.livesRemaining = 3
        self.enemiesDestroyed = 0
        self.penality = 0
        self.bonus = 0
    }
}

//create Player
let newPlayer = Player(name: "Ava")

//as the game progress, values change
newPlayer.enemiesDestroyed = 326
newPlayer.penality = 872
newPlayer.bonus = 25000

print("The final score is : \(newPlayer.scrore)")
//newPlayer.scrore = 55555 //Get only or Read only

// Note: let computed property is not allowed (Since it could be different every single time)
