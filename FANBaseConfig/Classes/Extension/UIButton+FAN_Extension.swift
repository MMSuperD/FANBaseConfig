//
//  UIButton+FAN_Extension.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import UIKit

extension UIButton {
    
    /// 这个是UIButton的构造方法
    /// - Parameters:
    ///   - title: 标题
    ///   - bgColor: 背景颜色
    ///   - font: 字体的大小
    convenience init(_ title: String, _ bgColor:UIColor, _ font: CGFloat) {
        self.init()
        setTitle(title, for: UIControl.State.normal)
        backgroundColor = bgColor
        titleLabel?.font = UIFont.systemFont(ofSize: font)
    }
    
    
    /// 这个是UIButton的类方法，用来创建一个button
    /// - Parameters:
    ///   - buttonType: button类型
    ///   - backgroundColorStr: 背景颜色
    ///   - title: 按钮标题
    ///   - titleColorStr: 标题颜色
    ///   - fontName: 字体名字
    ///   - fontSize: 字体大小
    /// - Returns: UIButton 对象
    class func button_Fan(buttonType: ButtonType = .custom, backgroundColorStr: String = "#FFFFFF", title: String = NORMALSTRING_FAN, titleColorStr: String = "#333333", fontName: String = "", fontSize: Float = 15.0) -> UIButton {
        
        let button = UIButton(type: buttonType)
        button.backgroundColor = UIColor(hexString: backgroundColorStr)
        button.setTitle(title, for: UIControl.State.normal)
        button.titleLabel?.font = UIFont(name: fontName, size: CGFloat(fontSize))
        button.setTitleColor(UIColor(hexString: titleColorStr), for: UIControl.State.normal)
        return button
    }

}
