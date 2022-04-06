//
//  UIView+FAN_Extension.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/22.
//

import Foundation
import UIKit
extension UIView {
   
    // MARK: OC
    public var width_FAN: CGFloat {
        get { return self.frame.size.width }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }

    public var height_FAN: CGFloat {
        get { return self.frame.size.height }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    public var size_FAN: CGSize  {
        get { return self.frame.size }
        set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }

    public var origin_FAN: CGPoint {
        get { return self.frame.origin }
        set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }
    
    public var x_FAN: CGFloat {
        get { return self.frame.origin.x }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    public var y_FAN: CGFloat {
        get { return self.frame.origin.y }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    public var centerX_FAN: CGFloat {
        get { return self.center.x }
        set {
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
    }
    
    public var centerY_FAN: CGFloat {
        get { return self.center.y }
        set {
            self.center = CGPoint(x: self.center.x, y: newValue)
        }
    }
    
    public var top_FAN : CGFloat {
        get { return self.frame.origin.y }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    public var bottom_FAN : CGFloat {
        get { return frame.origin.y + frame.size.height }
        set {
            var frame = self.frame
            frame.origin.y = newValue - self.frame.size.height
            self.frame = frame
        }
    }
    
    public var right_FAN : CGFloat {
        get { return self.frame.origin.x + self.frame.size.width }
        set {
            var frame = self.frame
            frame.origin.x = newValue - self.frame.size.width
            self.frame = frame
        }
    }
    
    public var left_FAN : CGFloat {
        get { return self.frame.origin.x }
        set {
            var frame = self.frame
            frame.origin.x  = newValue
            self.frame = frame
        }
    }
    
    public var radius_FAN: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    public var borderColor_FAN: UIColor {
         get {
             return UIColor.init(cgColor: layer.borderColor ??
                 UIColor.white.cgColor)
         }
         set {
             layer.borderColor = newValue.cgColor
         }
     }
     
    public var borderWidth_FAN: CGFloat {
         get {
             return layer.borderWidth
         }
         set {
             layer.borderWidth = newValue
         }
     }

    
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
   @IBInspectable var borderColor: UIColor {
        get {
            return UIColor.init(cgColor: layer.borderColor ??
                UIColor.white.cgColor)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    
   @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    // MARK: Swift
    public class FAN_View {
        
        var view: UIView?
        init(_ view: UIView) {
            self.view = view
        }
        
        public func x(_ x: CGFloat) -> Self{
            
            self.view?.frame.origin.x = x
            
            return self
        }
        
        public func y(_ y: CGFloat) -> Self{
            
            self.view?.frame.origin.y = y
            
            return self
        }
        
        public func width(_ width: CGFloat) -> Self{
            
            self.view?.frame.size.width = width
            
            return self
        }
        
        public func height(_ height: CGFloat) -> Self{
            
            self.view?.frame.size.height = height
            
            return self
        }
        
        public func size(_ size: CGSize) -> Self{
            
            self.view?.frame.size = size
            
            return self
        }
        
        public func origin(_ origin: CGPoint) -> Self{
            
            self.view?.frame.origin = origin
            
            return self
        }
        
        public func centerX(_ centerX: CGFloat) -> Self{
            
            self.view?.center.x = centerX
            
            return self
        }
        
        public func centerY(_ centerY: CGFloat) -> Self{
            
            self.view?.center.y = centerY
            
            return self
        }
        
        
        public func radius(_ radius: CGFloat) -> Self{
            
            self.view?.layer.cornerRadius = radius
            self.view?.layer.masksToBounds = true
            
            return self
        }

        public func borderColor(_ borderColor: UIColor) -> Self{
            
            self.view?.layer.borderColor = borderColor.cgColor
                
            return self
        }
        
        public func borderWidth(_ borderWidth: CGFloat) -> Self{
            
            self.view?.layer.borderWidth = borderWidth
            return self
        }

    }
    
    
    public var view: FAN_View{
        return FAN_View(self)

    }

    
}
