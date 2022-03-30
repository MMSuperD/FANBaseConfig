//
//  FANBaseViewController.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import UIKit

/**
 open : module以外可以访问、重写或者继承。
 public: module以外可以访问、不能重写或者继承。
 internal(默认)：当前module可用
 fileprivate: 当前file可见
 private：当前声明区域可见
 https://blog.csdn.net/weixin_46681371/article/details/122069597
 */

open class FAN_BaseViewController: UIViewController {

    var nvColor = RandomColor()
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        // 初始化数据
        self.initData()
        
        // 初始化通知
        self.initNotification()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    open override func viewDidLoad() {
        super.viewDidLoad()
        addCustomView()
    }
    
  /// 非必要情况不要自定义这个方法
    open func addCustomView() {
        // 1.隐藏系统的导航栏
        hidSystemNavBar()
        
        // 添加自定义的导航栏
        // 1.导航最大的背景View
        view.addSubview(self.nvView)
        self.nvView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH_FAN, height: STATUSBAR_NAVBAR_HEIGHT_FAN)
        self.nvView.backgroundColor = UIColor.white
        
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
        self.nvMidTitleLabel.textAlignment = NSTextAlignment.center
    }
    
    open func addChildView() {
        
      
        
    }
    /// 自定义导航栏
    func customNavBar() {
        
    }
    
    //MARK: - 隐藏系统的导航栏
    func hidSystemNavBar() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    open func initData() {
        
        
    }
    
    open func initNotification() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(actionFAN_BaseViewControllerGlobalNotification(notification:)), name: NSNotification.Name(FAN_BaseViewControllerGlobalNotification), object: nil)
    }
    
    //MARK: - 监听响应方法
    @objc func actionFAN_BaseViewControllerGlobalNotification(notification: Notification) -> Void {
        print("actionFAN_BaseViewControllerGlobalNotification 被执行了")
    }
    
    
    //MARK: - lazy
    // 左边的返回按钮
    open lazy var leftBtn: UIButton = {() -> UIButton in
        return UIButton(type: UIButton.ButtonType.custom)
    }()
    
    open lazy var rightBtn: UIButton = {() -> UIButton in
        return UIButton(type: UIButton.ButtonType.custom)
    }()
    
    open lazy var nvView: UIView = {() -> UIView in
        return UIView(frame: CGRect.zero)
    }()
    
    open lazy var nvStatuBarView: UIView = {() -> UIView in
        return UIView(frame: CGRect.zero)
    }()
    
    open lazy var nvBarView: UIView = {() -> UIView in
        return UIView(frame: CGRect.zero)
    }()
    
    open lazy var nvMidBarView: UIView = {() -> UIView in
        return UIView(frame: CGRect.zero)
    }()
    
    open lazy var nvMidTitleLabel: UILabel = {() -> UILabel in
        return UILabel(frame: CGRect.zero)
    }()
    
    
    //MARK: - setter
    
    public override var title: String?{
        set{
            super.title = newValue
            self.nvMidTitleLabel.text = newValue
        }
        get{
            return super.title
        }
        
    }

}
