//
//  FAN_RequestNetworkManager.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/8/3.
//

import Foundation
import UIKit
import Alamofire


/// request way
enum FAN_RequestMethod {
    case GET
    case POST
}


/// response data type
enum FAN_ResponseForm {
    case Data
    case JSON
}

/// network status
enum FAN_ReachabilityStatus {
    case notReachable
    case unknow
    case otherNetOrWifi
    case wwan
}


struct AModel: Decodable{
    
}



class FAN_RequestNetworkManager {
    
    /// create requestNetwork Manager
    static let shared: FAN_RequestNetworkManager = {
        FAN_RequestNetworkManager()
    }()
    
    func request(urlStr: String, method: FAN_RequestMethod = .GET, params: [String: Any]?, getResponseForm: FAN_ResponseForm? = .Data, completed: @escaping(Bool, Any?) -> Void) -> Void {
        
        let httpMethod: HTTPMethod = (method == .GET) ?  .get : .post
        
        let endParams = paramsFormatter_FAN(params: params)
        
        // start request
    
        
        AF.request(urlStr, method: httpMethod, parameters: endParams, encoder: URLEncodedFormParameterEncoder.default, headers: nil, interceptor: nil, requestModifier: nil).response { response in
            
            
        }
        
    }
    
    //MARK: private func
    private func paramsFormatter_FAN(params:Dictionary<String, Any>?) -> Dictionary<String,String>? {
        
        // params nil
        guard let paramsStr = params else { return nil }
        
        // create Dictionary
        var paramsDic = Dictionary<String,String>()
        
        // convenience params
        
        for (key,value) in paramsStr {
            
            let data = try! JSONSerialization.data(withJSONObject: value, options: JSONSerialization.WritingOptions.fragmentsAllowed)
            
            let str = String(data: data, encoding: String.Encoding.utf8)
            
            paramsDic[key] = str
        }
        
        return paramsDic

    }
    
}
