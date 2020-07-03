//
//  InvoicesController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/30/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit
import Alamofire

extension InvoicesViewController: UITableViewDataSource, UITableViewDelegate {
    
    // Table view delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listInvoiceCells.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "reusedCell")
        
        if(cell == nil){
            cell = UITableViewCell(style: .default, reuseIdentifier: "reusedCell")
        }
        
        cell?.textLabel?.text = listInvoiceCells[indexPath.row].roomName
        cell?.detailTextLabel?.text = String(listInvoiceCells[indexPath.row].totalPrice)
        
        return cell!
    }
    
    
    @objc func moveToThird(){
        let thirdViewController = InvoiceDescriptionViewController()
        self.navigationController?.pushViewController(thirdViewController, animated: true)
    }
    
    func UpdateAllInvoices(){
        guard let url = URL(string: API.GetLink(.invoices) + "/getAll") else {
            return
        }
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as?UIWindowScene,
            let sceneDelegate = windowScene.delegate as? SceneDelegate
            else {
                return
            }
        
        let headers: HTTPHeaders = [
            "Authorization": sceneDelegate.accessToken,
            "Accept": "application/json"
        ]
        
        Alamofire.request(url, method: .post, parameters: nil, encoding: JSONEncoding
            .default, headers: headers).response { (response) in
            guard let rawResponse = response.data else { return }
            
            let invoicesResponse = InvoicesResponse.decode(rawResponse)
                
            if(type(of: invoicesResponse) == [Invoice].self){
                let invoices = invoicesResponse as! [Invoice]
                
                for invoice in invoices{
                    self.listInvoiceCells.append(InvoiceCell(roomName: invoice.roomId.name, totalPrice: invoice.totalPrice))
                }
                
                self.tableView?.reloadData()
                self.refreshControl?.endRefreshing()
            }
            else{
                let error = invoicesResponse as! String
                self.ShowError("Error", error)
            }
        }
    }
    
    @objc func refresh(_ sender: AnyObject) {
        UpdateAllInvoices()
    }
}
