//
//  ZoneViewModel.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import Foundation

class ZoneViewModel: ObservableObject{
    
    @Published var Zones:[ZoneModel] = [
    
        ZoneModel(ZoneName: "Zone A", TotalPackeges: 10, PackegesDelivered: 5, TotalDeliveryTime: 70),
        
        ZoneModel(ZoneName: "Zone B", TotalPackeges: 5, PackegesDelivered: 2, TotalDeliveryTime: 20),
        
        ZoneModel(ZoneName: "Zone C", TotalPackeges: 20, PackegesDelivered: 5, TotalDeliveryTime: 150),
       
        ZoneModel(ZoneName: "Zone C", TotalPackeges: 20, PackegesDelivered: 5, TotalDeliveryTime: 150),
        
        ZoneModel(ZoneName: "Zone C", TotalPackeges: 20, PackegesDelivered: 5, TotalDeliveryTime: 150)
    
    
    ]
    
    
}
