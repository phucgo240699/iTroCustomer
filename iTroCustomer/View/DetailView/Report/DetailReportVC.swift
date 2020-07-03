//
//  DetailReportVC.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

extension ReportViewController{
    func SetupView(){
        self.title = "Reports"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(self.CreateReport))
        
    }
    
    @objc func CreateReport(){
        self.present(ReportCreationViewController(), animated: true, completion: nil)
    }
    
    func SetupRefreshControl(){
        refreshControl = UIRefreshControl()
        
        guard let refreshControl = refreshControl  else {return}
        
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
            
        self.tableView?.addSubview(refreshControl) // not required when using UITableViewController
        
    }
    
    func SetupTableView(){
        tableView = UITableView(frame: view.bounds)
        
        guard let tableView = tableView else { return }
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        SetupRefreshControl()
        
        self.view.addSubview(tableView)
    }
}
