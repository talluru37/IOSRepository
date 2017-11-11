//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase
import FirebaseAuth


class RegisterViewController: UIViewController {

    
//    //Pre-linked IBOutlets
//    let emailid:String = "naveent@mitsind.com"
//    let password:String = "mits123$"

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
    
        
        //TODO: Set up a new user on our Firbase database
       
    
        FirebaseAuth.Auth.auth().createUser(withEmail: emailTextfield.text!, password:passwordTextfield.text!) { (user, error) in
            
            if error != nil
            {
                print("Unable to create the user")
            }
            else
            {
                print("Registration is susccessful")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
            
        }
        
    } 
    
    
}
