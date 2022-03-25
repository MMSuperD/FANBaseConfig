//
//  UITextFiled+FAN_Extension.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import Foundation
import UIKit

extension UITextField {
    public func propertyValue(placehold:String? = "请输入值") {
        placeholder = placehold
        borderStyle = .roundedRect
    }
}
