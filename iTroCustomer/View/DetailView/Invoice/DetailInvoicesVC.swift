//
//  DetailInvoicesVC.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

extension InvoicesViewController{
    func SetupView(){
        self.title = "Invoices"
    }
    
    func SetupRefreshControl(){
        refreshControl = UIRefreshControl()
        if let refreshControl = refreshControl {
            refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
            refreshControl.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
            
            tableView?.addSubview(refreshControl) // not required when using UITableViewController
        }
    }
    
    func SetupTableView(){
        tableView = UITableView(frame: view.bounds)
        
        guard let tableView = tableView else {
            return
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        SetupRefreshControl()
        
        self.view.addSubview(tableView)
    }
    
    
}
