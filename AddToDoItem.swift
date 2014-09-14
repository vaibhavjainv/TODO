//
//  AddToDoItem.swift
//  ToDoList
//
//  Created by Jain, Vaibhav on 9/12/14.
//  Copyright (c) 2014 Jain, Vaibhav. All rights reserved.
//

import UIKit

class AddToDoItem: UIViewController {
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!
    
    var newToDoItem: ToDoItem?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        println("TODO view is loaded now.")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
   
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        
        if (sender as? UIBarButtonItem != self.doneButton){
            return
        }
        
        
        if(!self.textField.text.isEmpty){
            self.newToDoItem = ToDoItem(name: self.textField.text)
            self.newToDoItem?.isDone = false
            //self.newToDoItem.creationDate = NSDate()
            
        }
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
