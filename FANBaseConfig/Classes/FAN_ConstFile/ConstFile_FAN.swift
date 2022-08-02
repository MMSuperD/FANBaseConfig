//
//  File.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import Foundation
import UIKit

//TODO:屏幕相关
// 屏幕的宽
public let SCREEN_WIDTH_FAN = UIScreen.main.bounds.size.width

// 屏幕的高
public let SCREEN_HEIGHT_FAN = UIScreen.main.bounds.size.height

// 屏幕的尺寸
public let SCREEN_SIZE_FAN   = UIScreen.main.bounds.size

// 屏幕的Bounds
public let SCREEN_BOUNDS_FAN   = UIScreen.main.bounds

//顶部安全区域
public let SAVEAREA_TOP_FAN = (IS_IPHONE_X_FAN()) ? CGFloat(34.0) : CGFloat(20)

//底部安全区域
public let SAVEAREA_BTM_FAN = (IS_IPHONE_X_FAN()) ? CGFloat(34.0) : CGFloat(0.0)

//状态栏的高度
public let STATUSBAR_HEIGHT_FAN = (IS_IPHONE_X_FAN()) ? CGFloat(34.0) : CGFloat(20.0)

//导航栏的高度
public let NAVBAR_HEIGHT_FAN = (IS_IPHONE_X_FAN()) ? CGFloat(54.0) : CGFloat(44.0)

//状态栏 + 导航栏 的高度
public let STATUSBAR_NAVBAR_HEIGHT_FAN = STATUSBAR_HEIGHT_FAN + NAVBAR_HEIGHT_FAN

//TabBar的高度
public let TARBAR_HEIGHT_FAN = (IS_IPHONE_X_FAN()) ? CGFloat(83.0) : CGFloat(49.0)


//判断是否是IPHONE X 系列
public func IS_IPHONE_X_FAN() -> Bool {
    
    guard #available(iOS 11.0, *) else {
        return false
    }
    
    if #available(iOS 11.0, *) {
        let isX = UIApplication.shared.windows.first!.safeAreaInsets.bottom > 0
        return isX
    }
    
    return false
}

//常用的变量
public var keyWindow_FAN: UIWindow? {
    get {
        return UIApplication.shared.keyWindow
    }
}



//TODO:Print函数
//MARK: 全局函数 T是泛型 传入不同的参数
public func CCLog<T>(_ message:T,file:String = #file,funcName:String = #function,lineNum:Int = #line){
    
    #if DEBUG
    
    let file = (file as NSString).lastPathComponent;
    // 文件名：行数---要打印的信息
    print("\(file):(\(lineNum))--\(message)");
    
    #endif
    
}

//TODO:UIDevice
public func currentDeviceVersion_FAN() -> (String) {
    return UIDevice.current.systemVersion
}

//TODO:UIColor
public func RandomColor_FAN() -> (UIColor) {
   // //FIXME: 未实现
    let r = Float(arc4random() % 255)/255.0
    let g = Float(arc4random() % 255)/255.0
    let b = Float(arc4random() % 255)/255.0
    let color = UIColor(displayP3Red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(1))
    return color
}

//TODO:UIImage
public func I(_ imageName:String) -> (UIImage) {
    return UIImage.init(named: imageName) ?? UIImage.init()
}

//TODO: 常用回调函数
public typealias OneParamBlock_FAN = (_ param: Any) -> Void
