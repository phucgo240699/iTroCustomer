//
//  ReportsController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit
import Alamofire

extension ReportViewController: UITableViewDelegate, UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listReportCells.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return ReportViewController.GetRowHeight()
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //var cell = tableView.dequeueReusableCell(withIdentifier: "reusedCell")
        
        //if(cell == nil){
        //cell = ReportTableViewCell()  //UITableViewCell(style: .default, reuseIdentifier: "reusedCell")
        //}
        let identifier = "reusedCell"
        var cell:ReportTableViewCell? = tableView.dequeueReusableCell(withIdentifier: identifier) as? ReportTableViewCell
        
        if( cell == nil ) {
            cell = ReportTableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: identifier)
        }
        
        let currentCell = listReportCells[indexPath.row]
        
        if(listReportCells.count > 0){
            cell?.nameReport?.text = currentCell.name
            cell?.desciptionReport?.text =  currentCell.description
            cell?.backgroundColor = GetStatusColor(currentCell.status)
            cell?.layer.cornerRadius = UIDevice.current.userInterfaceIdiom == .pad ? 30 : 15
            
        }
        else{
            cell?.nameReport?.text = "Empty"
            cell?.desciptionReport?.text = "Empty"
            cell?.backgroundColor = .none
        }
        
        return cell!
    }
    
    func GetStatusColor(_ status: String) -> UIColor{
        switch status {
        case "done":
            return .green
        case "processing":
            return .yellow
        case "cancel":
            return .red
        default:
            return .white
        }
    }
    
    func UpdateAllReports() {
        guard let url = URL(string: API.GetLink(.report) + "/getAll") else {
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

                
            let reportsResponse = ReportsResponse.decode(rawResponse)
            if(type(of: reportsResponse) == [Report].self){
                let reports = reportsResponse as! [Report]
                
                self.listReportCells = []
                
                for report in reports{
                    self.listReportCells.append(ReportCell(_id: report._id, name: report.name, description: report.description , status: report.status))
                }
                
                self.tableView?.reloadData()
                self.refreshControl?.endRefreshing()
            }
            else{
                let error = reportsResponse as! String
                self.ShowError("Error", error)
            }
        }
    }
    
    
    
    @objc func refresh(_ sender: AnyObject) {
        UpdateAllReports()
        
    }
    
}

