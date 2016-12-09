//
//  ViewController.swift
//  practice7
//
//  Created by Ibuki KAWAMITSU on 2016/12/09.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func hello(sender: AnyObject) {
        myLabel.text = "こんにちは"
    }
    
    @IBAction func thankYou(sender: AnyObject) {
    myLabel.text = "ありがとう"
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

