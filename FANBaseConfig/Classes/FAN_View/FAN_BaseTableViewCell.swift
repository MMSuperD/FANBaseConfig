//
//  FAN_BaseTableViewCell.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/7/29.
//

import UIKit

public protocol FAN_BaseTableViewCellDataProtocol {
    
    var data: Any? {set get}
    var currentVc: UIViewController? {set get}
    
    var backBlock: OneParamBlock_FAN? {set get}
    
}

open class FAN_BaseTableViewCell: UITableViewCell,FAN_BaseTableViewCellDataProtocol {
    
    public var _data: Any?
    open var data: Any?
    
    open weak var currentVc: UIViewController?
    
    open var backBlock: OneParamBlock_FAN?

    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addPublicChildView()
        initData()
        addChildView()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    open override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    open func addChildView() -> Void {
        
    }
    
    open func initData() -> Void {
        
    }
    
    open func addPublicChildView() {
        
        
    }
    
    open func refreshUI() {
        
        
    }

}
