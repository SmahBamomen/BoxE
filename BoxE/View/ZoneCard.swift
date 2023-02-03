//
//  ZoneCard.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import SwiftUI

struct ZoneCard: View {
    @StateObject var zoneData = ZoneViewModel()
    var body: some View {
        
        List{
            ForEach(zoneData.Zones){ zone in
                
                ZStack(alignment: .bottomLeading) {
                    // MARK: - CARD BACKGROUND
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.2196078431, blue: 0.4392156863, alpha: 1)) ,Color(#colorLiteral(red: 0.01176470588, green: 0.1333333333, blue: 0.2549019608, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.trailing)
                    NavigationLink("",destination: PackagesView()).opacity(0) 
                    
                    // MARK: - CARD DETAILS
                    VStack(alignment: .leading, spacing: 35.0) {
                        HStack {
                            Image(systemName:"shippingbox")
                                .foregroundColor(.white)
                            Text("\(zone.PackegesDelivered)/\(zone.TotalPackeges)")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        HStack{
                            
                            Text("\(zone.ZoneName)")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                            Text("\(zone.TotalDeliveryTime) minutes")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.trailing)
                        }
                    }
                    .padding()
                    
                    
                }
                
                .listRowSeparator(.hidden)
            
                
            }
            
            .listRowInsets(.init(top: 10, leading: 16, bottom: 2, trailing: 0))
            .listRowBackground(Color(#colorLiteral(red: 0.9490196078, green: 0.9529411765, blue: 0.968627451, alpha: 1)))
        }
        .listStyle(.plain)
        .ignoresSafeArea()
    }
}

struct ZoneCard_Previews: PreviewProvider {
    static var previews: some View {
        ZoneCard()
    }
}
