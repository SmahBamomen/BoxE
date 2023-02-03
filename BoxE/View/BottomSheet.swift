//
//  BottomSheet.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import SwiftUI

struct BottomSheet: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .center){
               
            
                PackageInfoCard()
                    
    
            }
            .padding(/*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
        }.background(Color(#colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9764705882, alpha: 1)))
            
    }
}

struct BottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet()
    }
}
