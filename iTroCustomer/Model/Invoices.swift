//
//  Invoices.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/30/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Foundation

struct InvoiceCell {
    var roomName:String
    var totalPrice:Int
}
struct Invoice: Decodable {
    var consumptionElectric: Int
    var consumptionWater: Int
    var waterCost: Int?
    var electricCost: Int?
    var waterPrice: Int
    var electricPrice: Int
    var internetPrice: Int
    var parkingPrice: Int
    var cleanPrice: Int
    var totalPrice: Int
    var roomId:Room
}

struct InvoicesResponse:Decodable{
    var success: Bool
    var data: [Invoice]?
    var error: String?
    
    static func decode(_ rawResponse: Data) -> Any{
        do{
            let response = try JSONDecoder().decode(InvoicesResponse.self, from: rawResponse)
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
