//
//  Customer.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/3/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Foundation

struct Customer: Decodable {
    var _id: String
    var name: String
    var email: String?
    var phoneNumber: String?
    var birthday: Date?
    var identityCard: String
    var identityCardFront: String?
    var identityCardBack: String?
    var province: String?
    var district: String?
    var ward: String?
    var address: String?
    var notes: String?
    var roomId: String
    var isDeleted: Bool?
    
    
}

struct CustomerReponse: Decodable {
    var success: Bool
    var data: Customer?
    var error: String?
    
    static func decode(_ rawResponse: Data) -> Any{
        do{
            let response = try JSONDecoder().decode(CustomerReponse.self, from: rawResponse)
            
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
