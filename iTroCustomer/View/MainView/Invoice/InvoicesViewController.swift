//
//  FirstViewController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/27/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

class InvoicesViewController: UIViewController {
    
    var tableView: UITableView?
    var refreshControl: UIRefreshControl?
    var listInvoiceCells: [InvoiceCell] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupView()
        
        SetupTableView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.barTintColor = .none
        UpdateAllInvoices()
    }
    
}
