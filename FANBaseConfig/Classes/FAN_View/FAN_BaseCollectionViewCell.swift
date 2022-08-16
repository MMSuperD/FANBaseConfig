//
//  FAN_BaseCollectionViewCell.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/8/14.
//

import UIKit

open class FAN_BaseCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initData()
        addChildView()
        
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func initData() -> Void {
        
        self.titleLabel.text = " default text"
    }
    
    open func addChildView() -> Void {
        
        self.contentView.addSubview(self.titleLabel)
        
        self.titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }
    
    public lazy var titleLabel = {
        UILabel.label_FAN()
    }()
}
