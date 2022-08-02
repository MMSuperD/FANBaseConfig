//
//  FAN_NoDataView.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/4/1.
//

import UIKit

enum NoDataViewType_FAN: Int {
    case normal_one = 100  // 图片 + 文字
    case normal_two = 101  // 图片
}

class FAN_NoDataView: FAN_BaseView {
    
    let iconImageV: UIImageView = UIImageView(frame: CGRect.zero)
//    let titleLabel: UILabel = UILabel.label_FAN()
    var noDataViewType: NoDataViewType_FAN?
    
        
    convenience init(frame: CGRect, type: NoDataViewType_FAN = .normal_one) {
      
        self.init(frame: frame)
        self.noDataViewType = type;
        
        self.addChildView()
        self.addSnp()
        
    }
    
    
    
    override func addChildView() {
        self.addSubview(self.iconImageV)
        self.addSubview(self.titleLabel)
    }
    
    override func addSnp() {
        
        switch self.noDataViewType {
        case .normal_one:
            self.iconImageV.snp.makeConstraints { make in
                make.leading.trailing.top.equalTo(self)
            }
            
            self.titleLabel.snp.makeConstraints { make in
                make.leading.trailing.equalTo(self)
                make.top.equalTo(self.iconImageV.snp.bottom)
                make.bottom.equalTo(self.snp.bottom)
            }
        case .normal_two:
            self.iconImageV.snp.makeConstraints { make in
                make.leading.trailing.top.bottom.equalTo(self)
            }
            
        default:
            self.iconImageV.snp.makeConstraints { make in
                make.leading.trailing.top.equalTo(self)
            }
            
            self.titleLabel.snp.makeConstraints { make in
                make.leading.trailing.equalTo(self)
                make.top.equalTo(self.iconImageV.snp.bottom)
                make.bottom.equalTo(self.snp.bottom)
            }
        }
    }
    
    func setContent(imageName: String = NORMALSTRING_FAN, title: String = NORMALSTRING_FAN) -> Void {
        
        
        if imageName == NORMALSTRING_FAN  {
            self.iconImageV.image = UIImage.init(named: imageName)
        }else {
            self.iconImageV.image = UIImage.init(named: imageName)
        }
        
        if title == NORMALSTRING_FAN {
            self.titleLabel.text = title;
        }else {
            self.titleLabel.text = title;
        }
        
        
        
    }
    
}
