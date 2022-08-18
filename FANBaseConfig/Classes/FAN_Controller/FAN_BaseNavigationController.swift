//
//  FAN_BaseNavigationController.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import UIKit

open class FAN_BaseNavigationController: UINavigationController {

    open override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    open override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: animated)
    }

}
