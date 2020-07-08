//
//  SettingViewController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    var tableView: UITableView?
    var settings:[String] = ["Generate Barcode"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupView()
        
        SetupTableView()
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
