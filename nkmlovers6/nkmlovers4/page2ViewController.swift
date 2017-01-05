//
//  page2ViewController.swift
//  nkmlovers4
//
//  Created by Ibuki KAWAMITSU on 2016/12/13.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class page2ViewController: UIViewController , UITextFieldDelegate {

    
    
    
    
    
    var checkButton: UIButton!
    var checkButton2: UIButton!
    var checkButton3: UIButton!
    var checkButton4: UIButton!
    var checkButton5: UIButton!
    

    @IBOutlet weak var firstText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.firstText.delegate = self
        
        
        
        
        //チェックボックス
        checkButton = UIButton()
        checkButton.frame = CGRectMake(30,140,40,40)
        checkButton.addTarget(self, action: "onClickcheckButton:", forControlEvents: .TouchUpInside)
        // ボタンに画像セット
        checkButton.setImage(UIImage(named: "check.png"), forState: UIControlState.Selected)
        checkButton.setImage(UIImage(named: "nocheck.png"), forState: UIControlState.Normal)
        
        self.view.addSubview(checkButton)
        ////////////////////////////////////////////////////////////////////////////////////////////////////
        checkButton2 = UIButton()
        checkButton2.frame = CGRectMake(30,225,40,40)
        checkButton2.addTarget(self, action: "onClickcheckButton2:", forControlEvents: .TouchUpInside)
        // ボタンに画像セット
        checkButton2.setImage(UIImage(named: "check.png"), forState: UIControlState.Selected)
        checkButton2.setImage(UIImage(named: "nocheck.png"), forState: UIControlState.Normal)
        
        self.view.addSubview(checkButton2)
        
        ////////////////////////////////////////////////////////////////////////////////////////////////////
        checkButton3 = UIButton()
        checkButton3.frame = CGRectMake(30,310,40,40)
        checkButton3.addTarget(self, action: "onClickcheckButton3:", forControlEvents: .TouchUpInside)
        // ボタンに画像セット
        checkButton3.setImage(UIImage(named: "check.png"), forState: UIControlState.Selected)
        checkButton3.setImage(UIImage(named: "nocheck.png"), forState: UIControlState.Normal)
        
        self.view.addSubview(checkButton3)
        
        ////////////////////////////////////////////////////////////////////////////////////////////////////
        checkButton4 = UIButton()
        checkButton4.frame = CGRectMake(30,395,40,40)
        checkButton4.addTarget(self, action: "onClickcheckButton4:", forControlEvents: .TouchUpInside)
        // ボタンに画像セット
        checkButton4.setImage(UIImage(named: "check.png"), forState: UIControlState.Selected)
        checkButton4.setImage(UIImage(named: "nocheck.png"), forState: UIControlState.Normal)
        
        self.view.addSubview(checkButton4)
        
        
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////
        checkButton5 = UIButton()
        checkButton5.frame = CGRectMake(30,480,40,40)
        checkButton5.addTarget(self, action: "onClickcheckButton5:", forControlEvents: .TouchUpInside)
        // ボタンに画像セット
        checkButton5.setImage(UIImage(named: "check.png"), forState: UIControlState.Selected)
        checkButton5.setImage(UIImage(named: "nocheck.png"), forState: UIControlState.Normal)
        
        self.view.addSubview(checkButton5)
        
        }
    
    
    
    
    
    internal func onClickcheckButton(sender: UIButton){
        checkButton.selected = !checkButton.selected
    }
    
    internal func onClickcheckButton2(sender: UIButton){
        checkButton2.selected = !checkButton2.selected
    }
    
    internal func onClickcheckButton3(sender: UIButton){
        checkButton3.selected = !checkButton3.selected
    }
    internal func onClickcheckButton4(sender: UIButton){
        checkButton4.selected = !checkButton4.selected
    }
    internal func onClickcheckButton5(sender: UIButton){
        checkButton5.selected = !checkButton5.selected
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
