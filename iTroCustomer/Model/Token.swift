//
//  Token.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/27/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Foundation
import RealmSwift

struct Token:Decodable {
    var success: Bool
    var accessToken: String?
    var error: String?
}

class AccessToken: Object{
    @objc dynamic var token: String = ""
}
