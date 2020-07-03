//
//  API.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/29/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Foundation
enum API{
    case checkToken
    case invoices
    case login
    case report
    static func GetLink(_ api: API) -> String {
        switch api {
        case .checkToken:
            return "https://quanlytro.herokuapp.com/checkToken"
        case .login:
            return "https://quanlytro.herokuapp.com/users/login"
        case .invoices:
            return "https://quanlytro.herokuapp.com/invoices"
        case .report:
            return "https://quanlytro.herokuapp.com/reports"
        }
    }
}
