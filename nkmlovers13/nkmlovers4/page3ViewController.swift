//
//  page3ViewController.swift
//  nkmlovers4
//
//  Created by Ibuki KAWAMITSU on 2017/01/04.
//  Copyright © 2017年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class page3ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var bar1: UITextField!
    
    @IBOutlet weak var bar2: UITextField!
    
    @IBOutlet weak var bar3: UITextField!
    
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.bar1.delegate = self
        self.bar2.delegate = self
        self.bar3.delegate = self
    }

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func resultbutton(sender: UIButton) {
        let x1 = Int(bar1.text!)
        let x2 = Int(bar2.text!)
        let x3 = Int(bar3.text!)
        
        let y = x1! - x2! - x3!
        result.text = y.description
        
    }
       /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
