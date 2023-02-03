//
//  Extentions.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import Foundation

extension Date{
     
    var displayFormat: String{
       self.formatted(
            .dateTime
            .weekday(.wide)
            .day()
            .month()
       )
    }
}
