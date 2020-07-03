//
//  Users.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 7/1/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Foundation

struct Users: Decodable {
    var _id: String
    var username: String
    var password: String
    var isAdmin: Bool
    var isDeleted: Bool
    var owner: String?
}
