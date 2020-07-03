//
//  MainTabBarController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/25/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    var invoicesViewController: InvoicesViewController?
    var reportViewController: ReportViewController?
    var settingViewController: SettingViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        // title
        self.title = "Main"
        
        // Initialize and add items
        invoicesViewController = InvoicesViewController()
        reportViewController = ReportViewController()
        settingViewController = SettingViewController()
        
        guard let invoicesViewController = invoicesViewController, let reportViewController = reportViewController, let settingViewController = settingViewController else { return }
        
        self.viewControllers = [UINavigationController(rootViewController: invoicesViewController), UINavigationController(rootViewController: reportViewController), UINavigationController(rootViewController: settingViewController)]
        self.selectedIndex = 0
        
        
        // Customize items
        let tabBar = self.tabBar
        
        let item = tabBar.items![0]
        item.title = "Invoices"
        item.image = UIImage(systemName: "doc")
        
        let item2 = tabBar.items![1]
        item2.title = "Reports"
        item2.image = UIImage(systemName: "exclamationmark.bubble")
        
        let item3 = tabBar.items![2]
        item3.title = "Setting"
        item3.image = UIImage(systemName: "gear")
        
        // Do any additional setup after loading the view.
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
