//
//  String+FAN_Extension.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/3/19.
//

import Foundation


extension String {
    var length_FAN: Int {
        get {
            return self.count
        }
    }
    func substring_FAN(from: Int?, to: Int?) -> String {
        if let start = from {
            guard start < self.length_FAN else {
                return ""
            }
        }
        
        if let end = to {
            guard end >= 0 else {
                return ""
            }
        }
        
        if let start = from, let end = to {
            guard end - start >= 0 else {
                return ""
            }
        }
        
        let startIndex: String.Index
        if let start = from, start >= 0 {
            startIndex = self.index(self.startIndex, offsetBy: start)
        } else {
            startIndex = self.startIndex
        }
        
        let endIndex: String.Index
        if let end = to, end >= 0, end < self.length_FAN {
            endIndex = self.index(self.startIndex, offsetBy: end + 1)
        } else {
            endIndex = self.endIndex
        }
        
        return String(self[startIndex ..< endIndex])
    }
    
    func substring_FAN(from: Int) -> String {
        return self.substring_FAN(from: from, to: nil)
    }
    
    func substring_FAN(to: Int) -> String {
        return self.substring_FAN(from: nil, to: to)
    }
    
    func substring_FAN(from: Int?, length: Int) -> String {
        guard length > 0 else {
            return ""
        }
        
        let end: Int
        if let start = from, start > 0 {
            end = start + length - 1
        } else {
            end = length - 1
        }
        
        return self.substring_FAN(from: from, to: end)
    }
    
    func substring_FAN(length: Int, to: Int?) -> String {
        guard let end = to, end > 0, length > 0 else {
            return ""
        }
        
        let start: Int
        if let end = to, end - length > 0 {
            start = end - length + 1
        } else {
            start = 0
        }
        return self.substring_FAN(from: start, to: to)
    }

}


extension String {
    
    func getFileSize_FAN() -> UInt64 {
        var size: UInt64 = 0
        let fileManager = FileManager.default
        var isDir: ObjCBool = ObjCBool.init(false)
        let isExists = fileManager.fileExists(atPath: self, isDirectory: &isDir)
        
        //判断文件是否存在
        guard isExists else {
            return size
        }
        
        if isDir.boolValue { //该目录下所有的文件名
            let enumerator = fileManager.enumerator(atPath: self)
            for subPath in enumerator! {
                //获得全路径
                let filePath = self + "/\(subPath)"
                do {
                    let attr = try fileManager.attributesOfItem(atPath: filePath)
                    size += attr[FileAttributeKey.size] as! UInt64
                } catch {
                    print("error:\(error)")
                }
            }
        } else { //这里证明是单文件
            
            do {
                let attr = try fileManager.attributesOfItem(atPath: self)
                size += attr[FileAttributeKey.size] as! UInt64
            } catch {
                print("error:\(error)")
            }
        }
        return size
        
    }
}

extension String{
    
    /// 正则匹配手机号
    var isMobile_FAN: Bool {
        /**
         * 手机号码
         * 移动：134 135 136 137 138 139 147 148 150 151 152 157 158 159  165 172 178 182 183 184 187 188 198
         * 联通：130 131 132 145 146 155 156 166 171 175 176 185 186
         * 电信：133 149 153 173 174 177 180 181 189 199
         * 虚拟：170
         */
        return isMatch_FAN("^(1[3-9])\\d{9}$")
    }
    
    /// 正则匹配用户身份证号15或18位
    var isUserIdCard_FAN: Bool {
        return isMatch_FAN("(^[0-9]{15}$)|([0-9]{17}([0-9]|X)$)")
    }
    
    /// 正则匹配用户密码6-12位数字和字母组合
    var isPassword_FAN: Bool {
        return isMatch_FAN("^(?![0-9]+$)(?![a-zA-Z]+$)[a-zA-Z0-9]{6,12}")
    }
    
    /// 正则匹配URL
    var isURL_FAN: Bool {
        return isMatch_FAN("^[0-9A-Za-z]{1,50}")
    }
    
    /// 正则匹配用户姓名,20位的中文或英文
    var isUserName_FAN: Bool {
        return isMatch_FAN("^[a-zA-Z\\u4E00-\\u9FA5]{1,20}")
    }
    
    /// 正则匹配用户email
    var isEmail_FAN: Bool {
        return isMatch_FAN("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
    }
    
    /// 判断是否都是数字
    var isNumber_FAN: Bool {
        return isMatch_FAN("^[0-9]*$")
    }
    
    /// 只能输入由26个英文字母组成的字符串
    var isLetter_FAN: Bool {
        return isMatch_FAN("^[A-Za-z]+$")
    }
    
    private func isMatch_FAN(_ pred: String ) -> Bool {
        let pred = NSPredicate(format: "SELF MATCHES %@", pred)
        let isMatch: Bool = pred.evaluate(with: self)
        return isMatch
    }
}
