//
//  Invoices.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/30/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Foundation

struct InvoiceCell {
    var _id: String
    var roomName:String
    var totalPrice:Int
    var createdAt: String?
    var isPaid: Bool
    init (roomName: String, totalPrice: Int, _id: String, isPaid: Bool){
        self.roomName = roomName
        self.totalPrice = totalPrice
        self._id = _id
        self.isPaid = isPaid
    }
}

struct Invoice: Decodable {
    var _id: String
    var consumptionElectric: Int?
    var consumptionWater: Int?
    var waterCost: Int?
    var electricCost: Int?
    var waterPrice: Int?
    var electricPrice: Int?
    var internetPrice: Int?
    var parkingPrice: Int?
    var cleanPrice: Int?
    var totalPrice: Int
    var roomId:Room
    var createdAt: String
    var isPaid: Bool
}

struct InvoicesResponse:Decodable{
    var success: Bool
    var data: [Invoice]
    var error: String?
    
    static func decode(_ rawResponse: Data) -> Any{
        do{
            let response = try JSONDecoder().decode(InvoicesResponse.self, from: rawResponse)
            if(response.success == true){
                return response.data
                
            }
            
            return response.error ?? "Error"
            
        }
        catch {
            print("here")
            print(error)
            return String(error.localizedDescription)
        }
    }
}

struct InvoiceDescriptionElement {
    var consumptionElectric: Int
    var consumptionWater: Int
    var waterCost: Int
    var electricCost: Int
    var waterPrice: Int
    var electricPrice: Int
    var internetPrice: Int
    var parkingPrice: Int
    var cleanPrice: Int
    var roomName:String
    var totalPrice:Int
    var createdAt: String
    var isPaid: Bool
}

struct InvoiceDescription: Decodable {
    var _id: String
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
    var roomId:String
    var createdAt: String
    var isPaid: Bool
}

struct InvoiceDescriptionResponse:Decodable{
    var success: Bool
    var data: InvoiceDescription?
    var error: String?
    
    static func decode(_ rawResponse: Data) -> Any{
        do{
            let response = try JSONDecoder().decode(InvoiceDescriptionResponse.self, from: rawResponse)
            if(response.success == true){
                return response.data!
                
            }
            
            return response.error ?? "Error"
            
        }
        catch {
            print("here")
            print(error)
            return String(error.localizedDescription)
        }
    }
}
