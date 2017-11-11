//
//  ViewController.swift
//  ProtocolExample
//
//  Created by Rajkumar on 10/1/17.
//  Copyright © 2017 Rajkumar. All rights reserved.
//

import UIKit

//1. Adopt the del/data protocol
//2. Confirm to del/datasource protocol
//3. Linking del/data

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableobj.delegate=self
        //tableobj.datasource=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        //create cell
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        //adding some values
        cell.textLabel?.text="test"
        //returning it
        return cell
    }

}

