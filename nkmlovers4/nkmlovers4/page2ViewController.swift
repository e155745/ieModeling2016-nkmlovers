//
//  page2ViewController.swift
//  nkmlovers4
//
//  Created by Ibuki KAWAMITSU on 2016/12/13.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class page2ViewController: UIViewController , UITextFieldDelegate {

    
    
    @IBOutlet weak var firstText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.firstText.delegate = self
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
