//
//  UILabel+FAN_Extension.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import Foundation
import UIKit

extension UILabel {
    
    // MARK: 这里是OC模式
    public func setPropary_FAN(title: String?,color:String?,fontsize:Float = 15.0){
        if title != nil {
            text = title
        } else {
            text = "我是默认字符串"
        }
        if color != nil {
            textColor = UIColor(hexString: color!)
        } else {
            textColor = UIColor.black

        }
        font = UIFont.systemFont(ofSize: CGFloat(fontsize))
    }
    
    public class func label_FAN(title: String = "我是默认字符串", color: String = NORMALCOLORSTRING_FAN, fontsize: CGFloat = CGFloat(NORMALFONT_FAN), fontName: String = NORMALFONTNAME_FAN ) -> UILabel {
        
        let label = UILabel()
        label.text = title
        label.textColor = UIColor(hexString: color)
        label.font = UIFont(name: fontName, size: CGFloat(fontsize))
        return label
    }
    
    // MARK: 这里是Swift 模式
    
    public class FAN_Label: FAN_View {
        
        var label: UILabel
        public init(_ label:UILabel) {
           self.label = label
            super.init(label)
        }
        
        
        @discardableResult
        public func text(_ title: String = NORMALSTRING_FAN) -> Self {
            self.label.text = title;
            return self
        }
        
       
        @discardableResult
        public func fontSize(_ fontSize: CGFloat = CGFloat(NORMALFONT_FAN)) -> Self {
            self.label.font = UIFont.systemFont(ofSize: fontSize);
            return self
        }
        
        @discardableResult
        public func font(_ fontName: String = "", _ fontSize: CGFloat = CGFloat(NORMALFONT_FAN)) -> Self {
            self.label.font = UIFont(name: fontName, size: fontSize)
            return self
        }
        
       @discardableResult
        public func textColor(_ textColor: String = NORMALCOLORSTRING_FAN) -> Self {
            self.label.textColor = UIColor(hexString: textColor)
            return self
        }

        @discardableResult
        public func numberOfLines(_ numberOfLines: CGFloat = 0) -> Self {
            self.label.numberOfLines = Int(numberOfLines)
            return self
        }
        


       @discardableResult
        public func textAlignment(_ textAlignment: NSTextAlignment = .left) -> Self {
            self.label.textAlignment = textAlignment
            return self
        }
    }
    
    public var label: FAN_Label{
        return FAN_Label(self)
    }
}
