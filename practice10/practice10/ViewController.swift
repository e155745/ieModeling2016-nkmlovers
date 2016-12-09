//
//  ViewController.swift
//  practice10
//
//  Created by Ibuki KAWAMITSU on 2016/12/09.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func random(sender: AnyObject){
        // Do any additional setup after loading the view, typically from a nib.
        //乱数を作る
        let num = arc4random_uniform(100)
        myLabel.text = String(num)
        
        
        //numが50以上の時にokボタンを有効にする.
        //50未満の時は無効にする.
        okButton.enabled = (num>=50)
        

    }
    
    @IBAction func tapOK(sender: AnyObject){
 print("OK")
}

}