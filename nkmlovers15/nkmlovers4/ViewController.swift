//
//  ViewController.swift
//  nkmlovers4
//
//  Created by Ibuki KAWAMITSU on 2016/12/13.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func gotoPage2(_ sender: AnyObject) {
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "page2")
        nextVC?.modalTransitionStyle = .crossDissolve
        present(nextVC!, animated: true, completion: nil)
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

