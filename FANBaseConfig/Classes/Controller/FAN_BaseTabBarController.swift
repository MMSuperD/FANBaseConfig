//
//  FAN_TabBarController.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import UIKit

class FAN_BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func createChildController(title:  String,imageName: String, controllerClassName: String) -> UINavigationController {
        
        let cls = NSClassFromString(Bundle.nameplace + "." + controllerClassName)! as! UIViewController.Type
        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.title = title;
        let nv = FAN_BaseNavigationController.init(rootViewController: vc)
        
        return nv
       
    }

   

}
