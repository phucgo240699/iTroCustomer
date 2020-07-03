//
//  Report.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/30/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Foundation

struct ReportCell{
    var _id: String
    var name: String
    var description: String?
    var status: String
}

struct Report: Decodable {
    var _id: String
    var name: String
    var description: String
    var status: String
    var userId: String?
    var createdAt: Date?
    var updatedAt: Date?
}

struct ReportsResponse: Decodable {
    var success: Bool
    var data: [Report]?
    var error: String?
    
    static func decode(_ rawResponse: Data) -> Any{
        do{
            let response = try JSONDecoder().decode(ReportsResponse.self, from: rawResponse)
            
            if(response.success == true){
                return response.data ?? []
                
            }
            
            return response.error ?? "Error"
            
        }
        catch {
            return String(error.localizedDescription)
        }
    }
}


struct ReportCreation: Decodable {
    var _id: String
    var name: String
    var description: String
    var status: String
    var userId: String
    var createdAt: Date
    var updatedAt: Date
    var __v: Int
}

struct ReportReponse: Decodable {
    var success: Bool
    var data: ReportCreation?
    var error: String?
    
    static func decode(_ rawResponse: Data) -> Any{
        do{
            let response = try JSONDecoder().decode(ReportReponse.self, from: rawResponse)
            if(response.success == true){
                return response.data!
                
            }
            
            return response.error ?? "Error"
            
        }
        catch {
            return String(error.localizedDescription)
        }
    }
}
