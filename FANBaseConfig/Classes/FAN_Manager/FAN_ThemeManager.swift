//
//  FAN_ThemeManager.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/8/7.
//

import Foundation


/// function
extension String {
    
    /// create a image of imageName
    public func image_FAN() -> UIImage? {
        UIImage(named: self)
    }
    
    /// globle string
    public func localizedString_FAN(tableName: String? = "") -> String {
        Bundle.main.localizedString(forKey: self, value: nil, table: tableName)
    }
    
    
}
