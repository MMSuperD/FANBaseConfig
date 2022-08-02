//
//  FAN_TabBarController.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import UIKit

open class FAN_BaseTabBarController: UITabBarController {
    
    open override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    open func createChildController(title:  String,imageName: String, controllerClassName: String) -> UINavigationController {
        
        let cls = NSClassFromString(Bundle.nameplace + "." + controllerClassName)! as! UIViewController.Type
        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.title = title;
        vc.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal);
        let nv = FAN_BaseNavigationController.init(rootViewController: vc)
        
        return nv
        
    }
    
    
    
}
