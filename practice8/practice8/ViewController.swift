//
//  ViewController.swift
//  practice8
//
//  Created by Ibuki KAWAMITSU on 2016/12/09.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tanka = 120
        let kosu = 4
        myLabel1.text = "単価\(tanka),\(kosu)個"
        myLabel2.text = String(tanka*kosu)
        myLabel3.text = "金額" + myLabel2.text! + "円"
        myLabel1.textAlignment = .Left
        myLabel2.textAlignment = .Center
        myLabel3.textAlignment = .Right
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

