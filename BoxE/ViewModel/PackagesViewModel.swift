//
//  PackagesViewModel.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import Foundation

class PackagesViewModel: ObservableObject{
    
    @Published var packages:[PackageModel] = [
    
     PackageModel(PackageID: "#56766678987", CustomerName: "Farah Ashraf", CustomerAdd: "King Fahad", CustomerPhone: "0568797696"),
    
     PackageModel(PackageID: "#56766678987", CustomerName: "Sarah S", CustomerAdd: "King Fahad", CustomerPhone: "0568797696"),
     
     PackageModel(PackageID: "#56766678987", CustomerName: "Arwa M", CustomerAdd: "King Fahad", CustomerPhone: "0568797696"),
    
    ]
    
    
}
