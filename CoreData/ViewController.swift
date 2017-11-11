//
//  ViewController.swift
//  CoreData
//
//  Created by Rajkumar on 10/21/17.
//  Copyright © 2017 Rajkumar. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.setValue("token", forKey: "user_auth_token")
        
        print(UserDefaults.standard.value(forKey: "user_auth_token"))
        
        UserDefaults.standard.removeObject(forKey: "user_auth_token")
        
        
        let appDelegate = (UIApplication.shared.delegate) as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext // This will allow you to manage core data stuff
        
        //simplified way of creating the subclasses
        
        let car = Car(context:context) // It is creating an instance to the car class and passing the context as an argument  //Get a reference to the newly created entity
        
        //Since we created instance for the car class we can access the attributes
        car.brand = "Audi"
        car.type = "Sedan"
        
        // Now we have to save the data by calling the save context function
        appDelegate.saveContext()
        
        
        
        //Retrive Data
        do{
            let result = try context.fetch(Car.fetchRequest())
            
            let cars = result as! [Car]
            
            for car in cars{
                print(car.brand)
                print(car.type)
            }
        }catch{
            print(error.localizedDescription)
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

