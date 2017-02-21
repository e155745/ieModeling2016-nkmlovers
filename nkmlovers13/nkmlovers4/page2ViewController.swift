//
//  page2ViewController.swift
//  nkmlovers4
//
//  Created by Ibuki KAWAMITSU on 2016/12/13.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class page2ViewController: UIViewController, UITableViewDataSource {

    
    var items: [String] = []
    
   
    @IBOutlet weak var listTableView: UITableView!
    @IBAction func addItem(sender: AnyObject) {
        alert()
    }
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            listTableView.dataSource = self
        
        if NSUserDefaults.standardUserDefaults().objectForKey("todoList") != nil {
            items = NSUserDefaults.standardUserDefaults().objectForKey("todoList") as! [String]
        }
        

        }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCellWithIdentifier("listItem") as! ItemTableViewCell
        cell.itemLabel.text = items[indexPath.row]
        
        let cellSelectedBgView = UIView()
        cellSelectedBgView.backgroundColor = UIColor.clearColor()
        cell.selectedBackgroundView = cellSelectedBgView
        
        
        return cell
       
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
        }
    
    func alert() {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .Alert)
        alert.addTextFieldWithConfigurationHandler {
            (textfield) in
            textfield.placeholder = "Enter your item name"
        }
        
        let add = UIAlertAction(title: "Add", style: .Default) {
            
            (action) in
            let textfield = alert.textFields![0] as! UITextField
            self.items.append(textfield.text!)
            self.listTableView.reloadData()
            
            }
    
        let cancel =  UIAlertAction(title: "Cancel", style: .Cancel) {
        (alert) in
            print("Hi")
            
            }
            alert.addAction(add)
            alert.addAction(cancel)
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        items.removeAtIndex(indexPath.row)
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
}


    
    
 