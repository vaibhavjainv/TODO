//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Jain, Vaibhav on 9/13/14.
//  Copyright (c) 2014 Jain, Vaibhav. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    
    var itemName: String
    var isDone: Bool
    let creationDate: NSDate
    
    init (name: String) {
        itemName = name;
        isDone = false
        creationDate = NSDate()
    }
    
    func toString() -> String{
        
        var dateformatter = NSDateFormatter()
        
        return "TODO Object --> \(self.itemName), \(self.isDone), \(self.creationDate.descriptionWithLocale(NSLocale.currentLocale()))"
    }
    
    func toggleCompletion(){
        isDone = !isDone
    }
   
}
