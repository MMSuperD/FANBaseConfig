//
//  UILabel+FAN_Extension.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import Foundation

extension UILabel {
    func setPropary_FAN(title: String?,color:String?,fontsize:Float = 15.0){
        if title != nil {
            text = title
        }
        if color != nil {
            textColor = UIColor.black
        }
        font = UIFont.systemFont(ofSize: CGFloat(fontsize))
    }
    
    class func label_FAN(title: String = "我是默认字符串", color: String = "#333333", fontsize: Float = 15.0, fontName: String = "Helvetica-Bold" ) -> UILabel {
        
        let label = UILabel()
        label.text = title
        label.textColor = UIColor(hexString: color)
        label.font = UIFont(name: fontName, size: CGFloat(fontsize))
        return label
        
    }
}
