//
//  ResultAPI.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/29/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Foundation

struct TokenValidation: Decodable {
    var success: Bool
    var data: Users?
    var error: String?
    
    static func decode(_ rawResponse: Data) -> Any{
        var error = ""
        do{
            let response = try JSONDecoder().decode(TokenValidation.self, from: rawResponse)
            if(response.success == true){
                return response.data!
            }
            else {
                error = response.error ?? "Error"
            }
        }
        catch {
            return error.localizedDescription
        }
        return error
    }
}
