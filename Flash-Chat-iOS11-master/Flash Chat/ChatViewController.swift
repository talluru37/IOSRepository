//
//  ViewController.swift
//  Flash Chat
//
//  Created by Angela Yu on 29/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class ChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate {
    
    

    
    // Declare instance variables here

    
    // We've pre-linked the IBOutlets
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var messageTextfield: UITextField!
    @IBOutlet var messageTableView: UITableView!
    var messgaeArray : [Message] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: Set yourself as the delegate and datasource here:
        
         messageTableView.dataSource = self
        
        //TODO: Set yourself as the delegate of the text field here:
        messageTableView.delegate = self
        
        
        //TODO: Set the tapGesture here:
        let tapGesture =  UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))
        messageTableView.addGestureRecognizer(tapGesture)
        

        //TODO: Register your MessageCell.xib file here:

        messageTableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        
        configureTableView()
        
        retrieveMessages()
    }

    ///////////////////////////////////////////
    
    //MARK: - TableView DataSource Methods
  
    func retrieveMessages()
    {
       let messagesDB = Database.database().reference().child("Messages")
        messagesDB.observe(.childAdded) { (snapshot) in
            
            print("no of messages is \(snapshot.childrenCount)")
             let snapshopvalue = snapshot.value as! Dictionary<String,String>
            
//           let sender =  snapshopvalue["Sender"]!
//            let text = snapshopvalue["MessageBody"]!
//
//            print(text,sender)
            
            let messageobj =  Message()
            
            messageobj.Sender = snapshopvalue["Sender"]!
            messageobj.messageBody = snapshopvalue["MessageBody"]!
            
            self.messgaeArray.append(messageobj)
            
            self.configureTableView()
            self.messageTableView.reloadData()
        }
        
        
    }
    
    //TODO: Declare cellForRowAtIndexPath here:
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create the custom Tableview cell object
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! CustomMessageCell
        
        //let messagearray = ["first message","second message","third message"]
        
        
    //FirebaseApp.auth.
        
        cell.messageBody.text = messgaeArray[indexPath.row].messageBody
        cell.senderUsername.text = messgaeArray[indexPath.row].Sender
        cell.avatarImageView.image = UIImage(named:"egg")
        
        return cell
    }
    
    
    
    //TODO: Declare numberOfRowsInSection here:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       print("no of rows 3")
        return messgaeArray.count
    }
    
    
    
    //TODO: Declare tableViewTapped here:
    
    
    
    //TODO: Declare configureTableView here:
    
    func configureTableView()
    {
        messageTableView.rowHeight = UITableViewAutomaticDimension
        messageTableView.estimatedRowHeight = 120.0
    }
    
    ///////////////////////////////////////////
    
    //MARK:- TextField Delegate Methods
   
    @objc func tableViewTapped()
    {
        print("inside tableview tapped")
        messageTableView.endEditing(true)
    }

    
    //TODO: Declare textFieldDidBeginEditing here:

    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("inside keyboard start")
        UIView.animate(withDuration: 0.5) {
            self.heightConstraint.constant = 308
            self.view.layoutIfNeeded()
        }
    }
    
    //TODO: Declare textFieldDidEndEditing here:
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        print("inside end keyboard start")
        UIView.animate(withDuration: 0.5) {
            self.heightConstraint.constant = 50
            self.view.layoutIfNeeded()
        }
    }


    
    ///////////////////////////////////////////
    
    
    //MARK: - Send & Recieve from Firebase
    
    
    
    
    
    @IBAction func sendPressed(_ sender: AnyObject) {
        
        
        //TODO: Send the message to Firebase and save it in our database
        messageTextfield.endEditing(true)
        messageTextfield.isEnabled = false
        sendButton.isEnabled = false
        
        let messageDB =  Database.database().reference().child("Messages")
        
        let messagedictionary = ["Sender" : FirebaseAuth.Auth.auth().currentUser?.email, "MessageBody":messageTextfield.text]
        
        messageDB.childByAutoId().setValue(messagedictionary)
        { (error,ref) in
            if error != nil
            {
                print(error)
            }
            else{
                print("messaged saved sucessfully")
                self.messageTextfield.isEnabled = true
                self.sendButton.isEnabled = true
                self.messageTextfield.text = ""
            }
        }
        
    }
    
    //TODO: Create the retrieveMessages method here:
    
    

    
    
    
    @IBAction func logOutPressed(_ sender: AnyObject) {
        
        //TODO: Log out the user and send them back to WelcomeViewController
        
        do
        {
            try FirebaseAuth.Auth.auth().signOut()
        }catch
        {
            print("error received")
        }
      
        //allows the termination of the code if something is not met.
        guard (navigationController?.popToRootViewController(animated: true)) != nil
        else
        {
            print("no view exist")
            return
        }
      
    }
    


}
