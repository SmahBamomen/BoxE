//
//  ProgressBar.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import SwiftUI

struct ProgressBar: View {
    var width:CGFloat = 326
    var height:CGFloat = 29
    var percent:CGFloat = 60
    var color1 = Color(#colorLiteral(red: 0.9254901961, green: 0.4117647059, blue: 0.2274509804, alpha: 1))
    var color2 = Color(#colorLiteral(red: 1, green: 0.5411764706, blue: 0, alpha: 1))
    
    var body: some View {
   let multiplier = width / 100
        
        VStack(spacing: 20.0){
            HStack{
                
                Image(systemName:"shippingbox")
                    .foregroundColor(.accentColor)
                Text("Packages")
                    .fontWeight(.medium)
                Spacer()
               
                //MARK: Total Package Number Here
                Text("30 of 32 delivered")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                
            }.padding(.horizontal)
            
            ZStack(alignment:.leading){
                RoundedRectangle(cornerRadius: 4,style: .continuous)
                    .frame(width:width, height: height)
                    .foregroundColor(Color(#colorLiteral(red: 0.7529411765, green: 0.7568627451, blue: 0.7607843137, alpha: 1)))
                
                RoundedRectangle(cornerRadius: 4,style: .continuous)
                    .frame(width:percent * multiplier, height: height)
                    .background(LinearGradient(gradient: Gradient(colors: [color1,color2]), startPoint: .leading, endPoint: .trailing)
                        .clipShape(RoundedRectangle(cornerRadius: 4,style: .continuous))
                                
                    )
                    .foregroundColor(.clear)
            }
        }.background(RoundedRectangle(cornerRadius: 8)
            .foregroundColor(.white)
            .frame(width: 358.0, height: 103.0)
            .shadow(color: .gray.opacity(0.15), radius: 4, x: 0, y: 4)
        )
        
        
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
