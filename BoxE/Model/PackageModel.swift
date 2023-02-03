//
//  PackageModel.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import Foundation

struct PackageModel: Identifiable,Hashable {
    var id = UUID().uuidString
    var PackageID: String
    var CustomerName: String
    var CustomerAdd: String
    var CustomerPhone: String
}
