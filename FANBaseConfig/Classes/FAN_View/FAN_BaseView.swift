//
//  FAN_BaseView.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/31.
//

import UIKit

open class FAN_BaseView: UIView {
    
    var isDidAddChildView: Bool = false
    
    var dataObject: AnyObject?
    
    public var _data: Any?
    
    open var data: Any?
    

    public override init(frame: CGRect){
        super.init(frame: frame)

        self.public_fun1()
    }

    public required init?(coder: NSCoder){
        super.init(coder: coder)

        self.public_fun1()
    }
    
    convenience init(frame: CGRect,dataObject: AnyObject = ["mmd":"mmd"] as AnyObject) {
        self.init(frame: frame)
        self.dataObject = dataObject
    }
    
    
    /// 这个方法是为了解决值调用一次  addChildView 方法
    /// - Returns: Void
    func public_fun1() -> Void {
        
        if !isDidAddChildView {
            
            self.initData()
            self.addChildView()
            self.isDidAddChildView = true
        }
    }
    
    
    /// init data
    /// - Returns: Void
    open func initData() -> Void {
        
    }
    
    
    /// 添加子空间
    /// - Returns: Void
    open func addChildView() -> Void {
        
    }
    
    
    /// 添加约束
    /// - Returns: Void
    open func addSnp() -> Void{
        
    }
    
    
    /// refresh View
    open func refreshUI() {
        
    }
    
    public lazy var titleLabel = {
        UILabel.label_FAN()
    }()
    
    public lazy var defaultBtn = {
        UIButton("default", UIColor.randomColor(), 15)
    }()

}
