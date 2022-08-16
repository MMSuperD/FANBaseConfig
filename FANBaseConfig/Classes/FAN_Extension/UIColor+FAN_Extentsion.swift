//
//  FAN_Extentsion.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import Foundation
import UIKit

extension UIColor {
    
    
    /**
     Convenient initializer for RGB color code with default alpha 1.0
     
     - Parameters:
     - red: The integer code for red
     - green: The integer code for green
     - blue: The integer code for blue
     */
    public convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    /**
     Convenient initializer for pure hex color code
     
     - Parameter hex: The hex code of color
     */
    public convenience init(hex: Int) {
        self.init(red: (hex >> 16) & 0xff, green: (hex >> 8) & 0xff, blue: hex & 0xff)
    }
    
    public convenience init(hexString:String) {
        //处理数值
        var cString = hexString.uppercased().trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        let length = (cString as NSString).length
        //错误处理
        if (length < 6 || length > 7 || (!cString.hasPrefix("#") && length == 7)){
            //返回whiteColor
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            return
        }
        
        if cString.hasPrefix("#"){
            cString = (cString as NSString).substring(from: 1)
        }
        
        //字符串截取
        var range = NSRange()
        range.location = 0
        range.length = 2
        
        let rString = (cString as NSString).substring(with: range)
        
        range.location = 2
        let gString = (cString as NSString).substring(with: range)
        
        range.location = 4
        let bString = (cString as NSString).substring(with: range)
        
        //存储转换后的数值
        var r:UInt32 = 0,g:UInt32 = 0,b:UInt32 = 0
        //进行转换
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        //根据颜色值创建UIColor
        self.init(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1.0)
        
    }
    
    public static let system = UIColor(hex: 0x035d9a)
    public static let background = UIColor(hex: 0xf4f5f7)
    public static let systemGray = UIColor(hex: 0xe2e2e2)
    
    public static func randomColor() -> UIColor {
                
        let red = CGFloat.random(in: 0..<255)
        let green = CGFloat.random(in: 0..<255)
        let blue = CGFloat.random(in: 0..<255)

        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)
    }
    
}
