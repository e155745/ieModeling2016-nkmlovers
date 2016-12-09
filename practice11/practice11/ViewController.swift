//
//  ViewController.swift
//  practice11
//
//  Created by Ibuki KAWAMITSU on 2016/12/09.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image1 = UIImage(named: "btnNormal")
        let image2 = UIImage(named:"btnHighlighted")
        myButton.setImage(image1, forState: .Normal)
        myButton.setImage(image2, forState: .Highlighted)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

