//
//  ReportCreationController.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import UIKit
import Alamofire

extension ReportCreationViewController{
    func ClearReportForm(){
        self.nameTxtField?.text = ""
        self.descriptionTxtView?.text = ""
    }
    
    @objc func CreationButtonAction(_ button: UIButton){
        CreateReport()
    }
    
    
    func CreateReport(){
        guard let url = URL(string: API.GetLink(.report)) else { self.ShowError("Error", "URL failed")
            return
        }
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as?UIWindowScene,
        let sceneDelegate = windowScene.delegate as? SceneDelegate
        else {
            return
        }
        
        let headers : HTTPHeaders = [
            "Authorization": sceneDelegate.accessToken,
            "Accept": "application/json"
        ]
        
        guard let name = nameTxtField?.text else {
            self.ShowError("Error", "Empty value")
            return
        }
        
        let params = ["name": name, "description": descriptionTxtView?.text]
        
        DispatchQueue.global(qos: .background).async {
            Alamofire.request(url, method: .post, parameters: params as Parameters, encoding: JSONEncoding.default, headers: headers).response { (response) in
                
                guard let data = response.data else {
                    return
                }
                
                let result = ReportReponse.decode(data)
                
                if(type(of: result) == Report.self){
                    self.ShowError("Success", "Created successfully")
                    self.ClearReportForm()
                }
                else if(type(of: result) == String.self){
                    self.ShowError("Failed", result as! String)
                }
            }
        }
    }
}