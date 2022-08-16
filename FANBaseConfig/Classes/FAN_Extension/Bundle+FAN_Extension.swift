//
//  Bundle+FAN_Extension.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import Foundation

extension Bundle {
    //这个是计算下型属性
   open class var nameplace : String  {
        
        get {
            return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        }
        
    }
    
    open class func namespace_FAN() -> (String) {
        
        let hh = FAN_BaseTableViewCell()
        
        let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        return namespace
    }
    
    open class func namespace_FAN(currentStr: String) -> String {
        return currentStr
    }
}
