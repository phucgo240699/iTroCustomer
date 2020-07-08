//
//  DetailSettingVC.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/6/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

extension SettingViewController{
    
    func SetupView(){
        view.backgroundColor = .lightGray
        self.title = "Setting"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Log out", style: .plain, target: self, action: #selector(self.LogoutButtonAction))
    }
    
    func SetupTableView(){
        tableView = UITableView(frame: view.bounds)
        
        guard let tableView = tableView else { return }
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
    }
}
