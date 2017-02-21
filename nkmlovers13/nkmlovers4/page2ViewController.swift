//
//  page2ViewController.swift
//  nkmlovers4
//
//  Created by Ibuki KAWAMITSU on 2016/12/13.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit


var todoItem = [String]()


class page2ViewController: UIViewController, UITableViewDataSource {

    
    var items: [String] = []
    
   
    @IBOutlet weak var listTableView: UITableView!
    @IBAction func addItem(_ sender: AnyObject) {
        alert()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.dataSource = self
        
        
        if UserDefaults.standard.object(forKey: "todoList") != nil {
            items = UserDefaults.standard.object(forKey: "todoList") as! [String]
        }
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listItem") as! ItemTableViewCell
        cell.itemLabel.text = items[indexPath.row]
        
        let cellSelectedBgView = UIView()
        cellSelectedBgView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = cellSelectedBgView
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func alert() {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        alert.addTextField {
            (textfield) in
            textfield.placeholder = "入力しよう"
        }
        
        let add = UIAlertAction(title: "Add", style: .default) {
            
            (action) in
            let textfield = alert.textFields![0] 
            self.items.append(textfield.text!)
            self.listTableView.reloadData()
            
            todoItem.append(textfield.text!)
            
            UserDefaults.standard.set(todoItem, forKey: "todoList")
            
            
        }
        
        let cancel =  UIAlertAction(title: "Cancel", style: .cancel) {
            (alert) in
            print("Hi")
            
        }
        alert.addAction(add)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        items.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}




 
