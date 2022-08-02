//
//  CGFloat+FAN_Extension.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/7/27.
//

import Foundation

extension CGFloat {
    
    static func random() -> CGFloat {
        return CGFloat(CGFloat(arc4random()) / CGFloat(UInt32.max));
    }
}
