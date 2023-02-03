//
//  ProfileView.swift
//  boxe
//
//  Created by Samah Bamumin on 07/07/1444 AH.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            Image("profile").resizable()
                .frame(width: 60, height: 60)
                .background(.black)
                .clipShape(Circle())
            Spacer().frame(height:32)
            Button(action: {}) {
                HStack{
                    Text("Account")
                    Spacer()
                    Image(systemName: "pencil")
                }.foregroundColor(Color(red: 0.926, green: 0.413, blue: 0.232))
                    .padding(.horizontal)
            }
            .frame(width: 326, height: 37)
            .background(.white)
            .cornerRadius(4.0) .padding(.horizontal).padding(.bottom,20)
          
            Button(action: {}) {
                
                
                HStack{
                    Text("Settings")
                    Spacer()
                    Image(systemName: "gear")
                }.foregroundColor(Color(red: 0.926, green: 0.413, blue: 0.232))
                    .padding(.horizontal)
            }
            .frame(width: 326, height: 37)
            .background()
            .cornerRadius(4.0).padding(.horizontal).padding(.bottom,20)
      
            Button(action: {}) {
                
                
                HStack{
                    Text("About us")
                    Spacer()
                    Image("logo_profile")
                }.foregroundColor(Color(red: 0.926, green: 0.413, blue: 0.232))
                    .padding(.horizontal)
            }
            .frame(width: 326, height: 37)
            .background(.white)
            .cornerRadius(4.0) .padding(.horizontal).padding(.bottom,20)
            
    
            Button(action: {}) {
                
                
                HStack{
                    Text("Extract report")
                    Spacer()
                    Image(systemName: "doc.on.clipboard")
                }.foregroundColor(.white)
                    .padding(.horizontal)
            }
            .frame(width: 326, height: 37)
            .background(Color(red: 0.926, green: 0.413, blue: 0.232))
            .cornerRadius(4.0) .padding(.horizontal)
            Spacer()
            Text("Logistic Company").font(.caption).fontWeight(.semibold).foregroundColor(Color(red: 0.015, green: 0.14, blue: 0.272))
        } .padding() .background(Color(red: 0.948, green: 0.953, blue: 0.97))
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
