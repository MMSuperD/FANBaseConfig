//
//  FAN_BaseTableView.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/8/1.
//

import UIKit

open class FAN_BaseTableView: UITableView,UIGestureRecognizerDelegate{

    public var simultaneousGesture = true

    

    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.simultaneousGesture
    }
    

    open override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
        
}
