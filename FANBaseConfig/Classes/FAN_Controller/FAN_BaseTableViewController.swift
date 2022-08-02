//
//  FAN_BaseTableViewController.swift
//  FANBaseConfig
//
//  Created by 王丹 on 2022/7/26.
//

import UIKit

open class FAN_BaseTableViewController: FAN_BaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        addTableView()
        
    }
    
    
    //MARK: -public
    public func tableview(registerCellArray:Array<String>, cellReuseIdentifier:Array<String>?) -> Void {
                
        for i in 0..<registerCellArray.count {
            
            let className = registerCellArray[i]
            
            if let cellReuseIdentifier = cellReuseIdentifier {
                
                if i < cellReuseIdentifier.count {
                    self.tableView.register(className.classForCoder, forCellReuseIdentifier: cellReuseIdentifier[i])
                } else {
                    self.tableView.register(className.classForCoder, forCellReuseIdentifier: className)
                }
            }else
            {
                self.tableView.register(className.classForCoder, forCellReuseIdentifier: className)
            }
         
        }
    }
        
    
    private func addTableView() -> Void {
        
        view.addSubview(self.tableView);
        self.tableView.snp.makeConstraints { make in
            
            make.leading.trailing.bottom.equalTo(self.view)
            make.top.equalTo(self.nvView.snp.bottom)
        }
        
    }
    
    //MARK: - lazy
    open lazy var tableView:FAN_BaseTableView = { () -> FAN_BaseTableView in
        
        let tv = FAN_BaseTableView(frame: CGRect.zero, style: UITableView.Style.grouped);
        
        tv.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "UITableViewCell");
        tv.delegate = self
        tv.dataSource = self
        tv.rowHeight = UITableView.automaticDimension
        tv.estimatedRowHeight = 40
        tv.tableHeaderView = UIView()
        tv.tableFooterView = UIView()
        return tv
    }()
    
}

extension FAN_BaseTableViewController{
    
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10;
    }
    
    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        cell.backgroundColor = UIColor.randomColor()
        cell.selectionStyle = .none
        
        return cell
    }
    
    open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("currentIndex:\(indexPath.section)-\(indexPath.row)")
    }
    
    
    open func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        CGFloat(0.05)
    }
    
    open func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
         UIView()
    }
    
    open func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        CGFloat(0.05)
    }
    
    open func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        UIView()
    }
    
}
