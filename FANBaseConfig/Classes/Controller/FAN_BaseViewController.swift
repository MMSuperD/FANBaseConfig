//
//  FANBaseViewController.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import UIKit

class FAN_BaseViewController: UIViewController {

    var nvColor = RandomColor()
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        addCustomView()
    }
    
  /// 非必要情况不要自定义这个方法
    func addCustomView() {
        // 1.隐藏系统的导航栏
        hidSystemNavBar()
        
        // 添加自定义的导航栏
        // 1.导航最大的背景View
        view.addSubview(self.nvView)
        self.nvView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH_FAN, height: STATUSBAR_NAVBAR_HEIGHT_FAN)
        
        // 2.添加状态栏
        self.nvView.addSubview(self.nvStatuBarView)
        self.nvStatuBarView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH_FAN, height: STATUSBAR_HEIGHT_FAN)
        
        // 3.添加导航栏
        self.nvView.addSubview(self.nvBarView)
        self.nvBarView.frame = CGRect(x: 0, y: STATUSBAR_HEIGHT_FAN, width: SCREEN_WIDTH_FAN, height: NAVBAR_HEIGHT_FAN)
        
        // 4. 左边的返回按钮
        self.nvBarView.addSubview(self.leftBtn)
        self.leftBtn.frame = CGRect(x: 20, y: 0, width: 40, height: NAVBAR_HEIGHT_FAN)
        
        // 5. 右边的按钮，默认隐藏
        self.nvBarView.addSubview(self.rightBtn)
        let rightBtn_X = SCREEN_WIDTH_FAN - 60.0
        self.rightBtn.frame = CGRect(x: rightBtn_X, y: 0, width: 40, height: NAVBAR_HEIGHT_FAN);
        
        // 6. 添加中间的titleView
        self.nvBarView.addSubview(self.nvMidBarView)
        let nvMidBarView_width: CGFloat = 150.0
        let nvMidBarView_height = NAVBAR_HEIGHT_FAN
        let nvMidBarView_X = (SCREEN_WIDTH_FAN - nvMidBarView_width) / 2.0
        let nvMidBarView_Y: CGFloat = 0.0
        self.nvMidBarView.frame = CGRect(x: nvMidBarView_X, y: nvMidBarView_Y, width: nvMidBarView_width, height: nvMidBarView_height)
        
        // 7. 添加中间的titleLabel
        self.nvMidBarView.addSubview(self.nvMidTitleLabel)
        self.nvMidTitleLabel.frame = CGRect(x: 0, y: 0, width: self.nvMidBarView.width, height: self.nvMidBarView.height)
    }
    
    func addChildView() {
        
      
        
    }
    
    /// 自定义导航栏
    func customNavBar() {
        
        
        
        
    }
    
    //MARK: - 隐藏系统的导航栏
    func hidSystemNavBar() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    //MARK: - lazy
    // 左边的返回按钮
    lazy var leftBtn: UIButton = {() -> UIButton in
        return UIButton(type: UIButton.ButtonType.custom)
    }()
    
    lazy var rightBtn: UIButton = {() -> UIButton in
        return UIButton(type: UIButton.ButtonType.custom)
    }()
    
    lazy var nvView: UIView = {() -> UIView in
        return UIView(frame: CGRect.zero)
    }()
    
    lazy var nvStatuBarView: UIView = {() -> UIView in
        return UIView(frame: CGRect.zero)
    }()
    
    lazy var nvBarView: UIView = {() -> UIView in
        return UIView(frame: CGRect.zero)
    }()
    
    lazy var nvMidBarView: UIView = {() -> UIView in
        return UIView(frame: CGRect.zero)
    }()
    
    lazy var nvMidTitleLabel: UILabel = {() -> UILabel in
        return UILabel(frame: CGRect.zero)
    }()
    
    
    //MARK: - setter
    
    override var title: String?{
        set{
            super.title = newValue
            self.nvMidTitleLabel.text = newValue
        }
        get{
            return super.title
        }
        
    }

}
