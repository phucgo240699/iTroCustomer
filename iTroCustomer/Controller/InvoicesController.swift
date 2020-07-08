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
        
        cell?.textLabel?.text = listInvoiceCells[indexPath.row].roomName + "\t\t\t\t" + String(listInvoiceCells[indexPath.row].totalPrice)
        cell?.detailTextLabel?.text = String(listInvoiceCells[indexPath.row].totalPrice)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("list////////////////////")
        print(listInvoiceCells)
        GetInvoiceDescription(id: listInvoiceCells[indexPath.row]._id)

    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC=segue.destination as! InvoiceDescriptionViewController
//
//        if let indexPath = tableView?.indexPathForSelectedRow{
//            destinationVC.invoice = listInvoiceCells[indexPath.row]
//        }
//    }
    
    @objc func moveToThird(){
//        let thirdViewController = InvoiceDescriptionViewController()
//        self.navigationController?.pushViewController(thirdViewController, animated: true)
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
                self.listInvoiceCells = []
                for invoice in invoices{
                    self.listInvoiceCells.append(InvoiceCell(roomName: invoice.roomId.name, totalPrice: invoice.totalPrice, _id: invoice._id))
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
    
    func GetInvoiceDescription(id: String){
        guard let url = URL(string: API.GetLink(.invoices) + "/" + id) else {
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
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding
            .default, headers: headers).response { (response) in
            guard let rawResponse = response.data else { return }
            
            let invoiceDescriptionResponse = InvoiceDescriptionResponse.decode(rawResponse)
            
            if(type(of: invoiceDescriptionResponse) == InvoiceDescription.self){
                let invoiceDescription = invoiceDescriptionResponse as! InvoiceDescription
                
                let invoiceDescriptionVC = InvoiceDescriptionViewController(invoice: InvoiceDescriptionElement(consumptionElectric: invoiceDescription.consumptionElectric, consumptionWater: invoiceDescription.consumptionWater, waterCost: invoiceDescription.waterCost ?? 0, electricCost: invoiceDescription.electricCost ?? 0, waterPrice: invoiceDescription.waterPrice, electricPrice: invoiceDescription.electricPrice, internetPrice: invoiceDescription.internetPrice, parkingPrice: invoiceDescription.parkingPrice, cleanPrice: invoiceDescription.cleanPrice, roomName: invoiceDescription.roomId, totalPrice: invoiceDescription.totalPrice, createdAt: invoiceDescription.createdAt))
                
                self.navigationController?.pushViewController(invoiceDescriptionVC, animated: true)

            }
            else{
                let error = invoiceDescriptionResponse as! String
                self.ShowError("Error", error)
            }
        }
    }
    
    @objc func refresh(_ sender: AnyObject) {
        UpdateAllInvoices()
    }
}
