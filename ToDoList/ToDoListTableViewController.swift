//
//  ToDoListTableViewController.swift
//  ToDoList
//
//  Created by Jain, Vaibhav on 9/12/14.
//  Copyright (c) 2014 Jain, Vaibhav. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {

    var todoLists = [ToDoItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("Table View is loaded now.")
        
        loadInitData()
        
        println("My list so far = \(todoLists)")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 

    @IBAction func unwindToSegue (segue : UIStoryboardSegue) {
        println("inside unwind")
        
        var svc = segue.sourceViewController as? AddToDoItem
        
        if(svc != nil){
            
            var todoItem = svc?.newToDoItem
            
            if(todoItem != nil){
                todoLists.append(todoItem!)
                self.tableView.reloadData()
            }
        }
        
      
    }
    
    func loadInitData(){
        todoLists.insert(ToDoItem(name: "Taks# 11"), atIndex: 0)
        todoLists.insert(ToDoItem(name: "Taks# 12"), atIndex: 1)
        todoLists.insert(ToDoItem(name: "Taks# 13"), atIndex: 2)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return todoLists.count
    }
    

    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell", forIndexPath: indexPath) as UITableViewCell
        

        cell.textLabel?.text = todoLists[indexPath.row].itemName



        if todoLists[indexPath.row].isDone {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }else{
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Slectected index -> \(indexPath.row)")
        
        todoLists[indexPath.row].toggleCompletion()

        var myArr = [NSIndexPath]()
        myArr.insert(indexPath, atIndex: 0)
        tableView.reloadRowsAtIndexPaths(myArr, withRowAnimation: UITableViewRowAnimation.None)
        
        

    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        println("POKA")
        
        if editingStyle == .Delete {
            
            println("KAMPAI")
           
            // Delete the row from the data source
            todoLists.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
//            else if editingStyle == .Insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
