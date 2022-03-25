//
//  FAN_TestBaseViewController.swift
//  FANBaseConfig_Example
//
//  Created by 王丹 on 2022/3/24.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import FANBaseConfig

class FAN_TestBaseViewController: FAN_BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.dismiss(animated: true)
    }

}
