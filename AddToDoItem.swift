//
//  AddToDoItem.swift
//  ToDoList
//
//  Created by Jain, Vaibhav on 9/12/14.
//  Copyright (c) 2014 Jain, Vaibhav. All rights reserved.
//

import UIKit

class AddToDoItem: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        println("TODO view is loaded now.")
        
        var tdi = ToDoItem(name: "Wash Car ")
        
        println("my first todo item = \(tdi.toString())")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
   

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
