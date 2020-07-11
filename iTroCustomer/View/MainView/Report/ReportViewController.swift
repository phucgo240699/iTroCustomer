//
//  BarCodeViewController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/29/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {
    

    var tableView: UITableView?
    var refreshControl: UIRefreshControl?
    var listReportCells: [ReportCell] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupView()
        
        // Setup table view
        SetupTableView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UpdateAllReports()
    }
    

    static func GetRowHeight() -> CGFloat {
        return UIDevice.current.userInterfaceIdiom == .pad ? 450 : 300
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
