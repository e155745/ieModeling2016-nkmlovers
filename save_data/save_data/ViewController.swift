//
//  ViewController.swift
//  save_data
//
//  Created by Ibuki KAWAMITSU on 2017/01/16.
//  Copyright © 2017年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func saveText1(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setValue(textField1.text, forKey: "myText1")
        view.endEditing(true)
    }
    
    @IBAction func saveText2(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setValue(textField2.text, forKey: "myText2")
        view.endEditing(true)
    }
    
    @IBAction func readText1(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if let myText = defaults.stringForKey("myText1"){
            myLabel.text = myText
        }
    }
    
    @IBAction func readText2(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if let myText = defaults.stringForKey("myText2"){
            myLabel.text = myText
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

