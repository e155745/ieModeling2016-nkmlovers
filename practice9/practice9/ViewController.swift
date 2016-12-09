//
//  ViewController.swift
//  practice9
//
//  Created by Ibuki KAWAMITSU on 2016/12/09.
//  Copyright © 2016年 Ibuki KAWAMITSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //ラベルを作成している
        let myLabel = UILabel()
        myLabel.text = "Hello World"
        //ラベルの領域を設定している
        myLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 21)
        //文字色と背景色を設定
        myLabel.textColor = UIColor.blackColor()
        myLabel.backgroundColor = UIColor.lightGrayColor()
        //ビューに表示
        view.addSubview(myLabel)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

