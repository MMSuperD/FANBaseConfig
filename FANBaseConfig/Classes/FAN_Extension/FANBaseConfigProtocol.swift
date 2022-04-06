//
//  FANBaseConfigProtocol.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/4/5.
//

import Foundation


protocol FanProtocol{
    
    var fan: AnyObject {
        get
    }
    
    func x(_ x: CGFloat) -> AnyObject
    
    func y(_ y: CGFloat) -> AnyObject
    
    func width(_ width: CGFloat) -> AnyObject
    
    func height(_ height: CGFloat) -> AnyObject
    
    func size(_ size: CGSize) -> AnyObject
    
    func origin(_ origin: CGPoint) -> AnyObject
    
    func centerX(_ centerX: CGFloat) -> AnyObject
    
    func centerY(_ centerY: CGFloat) -> AnyObject
    
    func radius(_ radius: CGFloat) -> AnyObject
    
    func borderColor(_ borderColor: UIColor) -> AnyObject
    
    func borderWidth(_ borderWidth: CGFloat) -> AnyObject

}
