//
//  Room.swift
//  iTroCustomer
//
//  Created by Phúc Lý on 6/30/20.
//  Copyright © 2020 Phúc Lý. All rights reserved.
//

import Foundation

struct Room:Decodable {
    var _id: String
    var name: String
    var floor: Int
    var price: Int
    var square: Int
    var capacity: Int
    var debt: Int
    var amountOfVehicles: Int
    var slotStatus: String
}
