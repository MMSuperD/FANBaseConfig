//
//  FAN_TestView.swift
//  FANBaseConfig_Example
//
//  Created by 王丹 on 2022/3/31.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

class FAN_TestView: UIView {

    var title: String
    
    var label: UILabel?
    
    convenience init(frame: CGRect, title: String) {
       
        // 这里必须是 self 调用自己的初始化方法
        self.init(frame: frame)
        
        self.title = title;
        
        
    }
  
    override init(frame: CGRect) {
        self.title = "Good"
        super.init(frame: frame)
    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    required init?(coder: NSCoder) {
        self.title = "Good"
        super.init(coder: coder)
    }

    
}
