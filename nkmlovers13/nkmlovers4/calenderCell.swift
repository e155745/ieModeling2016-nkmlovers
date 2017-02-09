//
//  calenderCell.swift
//  nkmlovers4
//
//  Created by Ibuki KAWAMITSU on 2017/02/06.
//  Copyright © 2017年 Ibuki KAWAMITSU. All rights reserved.
//

import Foundation
import UIKit

class CalendarCell: UICollectionViewCell {
    
    var textLabel: UILabel!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        // UILabelを生成
        textLabel = UILabel(frame: CGRectMake(0, 0, self.frame.width, self.frame.height))
        textLabel.font = UIFont(name: "HiraKakuProN-W3", size: 12)
        textLabel.textAlignment = NSTextAlignment.Center
        // Cellに追加
        self.addSubview(textLabel!)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
}