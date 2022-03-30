//
//  NSObject+FAN_Extension.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/22.
//

import Foundation

extension NSObject {
    open func objectFromString(ClassName:String) -> (NSObject) {
        let cls: AnyClass = NSClassFromString(Bundle.nameplace + "." + ClassName)!
        let object = cls as! NSObject.Type
        let temp = object.init()
        return temp
    }
}
