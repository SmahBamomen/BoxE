//
//  ZoneModel.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import Foundation

struct ZoneModel: Identifiable {
    var id = UUID().uuidString
    var ZoneName: String
    var TotalPackeges: Int
    var PackegesDelivered: Int
    var TotalDeliveryTime: Int
}
