//
//  ViewController.swift
//  TouchID
//
//  Created by appkoder on 20/03/2017.
//  Copyright © 2017 appkoder. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchIDClicked(_ sender: Any) {
        
        
        guard let tabBar = tabBarController?.tabBar else { return }
        
        
        let context = LAContext()
        
        var error: NSError?
        
        if context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error){
            
            // user can use touch ID
            
            evaluatePolicy(context: context)
            
        }else{
            
            //Device cannot use touch ID
            
            switch error!.code{
            case LAError.Code.touchIDNotEnrolled.rawValue:
                
                print(error?.localizedDescription ?? "")
            case LAError.Code.passcodeNotSet.rawValue:
                
                print(error?.localizedDescription ?? "")
            default:
                print(error?.localizedDescription ?? "")
            }
        }
        
    }
    
    
    func evaluatePolicy(context: LAContext){
        
        context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Access requires your authentication") { (success, error) in
            
            DispatchQueue.main.async {
                
                if error == nil{
                    
                    self.infoLabel.text = "You have been successfully authenticated"
                    self.performSegue(withIdentifier: "success", sender: self)
                }
                else{
                    
                    switch error!._code{
                        
                    case LAError.Code.systemCancel.rawValue:
                        self.infoLabel.text = "System cancelled"
                        
                    case LAError.Code.userCancel.rawValue:
                        self.infoLabel.text = "user cancels authentication"
                        
                    case LAError.Code.userFallback.rawValue:
                        self.infoLabel.text = "user chose to use passcode"
                        self.checkPassword()
                        
                    default:
                        print(error?.localizedDescription ?? "")
                    }
                }
            }
            
            
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue)
    {
        
    }
    
    func checkPassword()
    {
        let alert = UIAlertController(title: "Password", message: "What is your password",preferredStyle: .alert)
        
        //async callback function
        let saveAction = UIAlertAction(title: "Authenticate",style: .default) {[unowned self] action in
            
            //read the first text fields.
            guard let textField = alert.textFields?.first,
                let password = textField.text else {
                    return
            }
            
            if(password == "password"){
                
                self.infoLabel.text = "password successful"
                self.performSegue(withIdentifier: "success", sender: self)
            }else{
                self.infoLabel.text = "incorrect password"
            }

        }
        
        let cancelAction = UIAlertAction(title: "Cancel",style: .default)
        
        alert.addTextField()
        
        alert.addAction(cancelAction)
        alert.addAction(saveAction)
        
        present(alert, animated: true)
    }

}

