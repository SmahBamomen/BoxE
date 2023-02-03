//
//  LoginView.swift
//  boxe
//
//  Created by Samah Bamumin on 07/07/1444 AH.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
       @State var password: String = ""
    @State var showMainView=false
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
               
               
                LoginTextView(text: "Welcome,", font: .largeTitle, color: Color(red: 0.926, green: 0.413, blue: 0.227), fontWeight: .semibold, height: 0).padding(.leading)
                LoginTextView(text: "Login by company username ,", font: .footnote, color:Color(red: 0.753, green: 0.753, blue: 0.753), fontWeight: .medium, height: 64).padding(.leading)
                
                LoginTextView(text: "Username", font: .caption, color:.white, fontWeight: .semibold, height: 16).padding(.leading)
               
                TextField("Company Username", text: $username).font(.footnote).fontWeight(.medium).foregroundColor(Color(red: 0.926, green: 0.413, blue: 0.227))
                    .padding().frame(width:326,height: 37 )
                               .background(.white)
                               .cornerRadius(4).padding(.leading)
                Spacer().frame(height:32)
                LoginTextView(text: "Password", font: .caption, color:.white, fontWeight: .semibold, height: 16).padding(.leading)
                           SecureField("*******", text: $password)
                    .padding().frame(width:326,height: 37 ).fontWeight(.medium).font(.footnote).foregroundColor(Color(red: 0.926, green: 0.413, blue: 0.227))
                               .background(.white)
                               .cornerRadius(4).padding(.leading)
                Spacer().frame(height:320)
                Button(action: {
                    
                    showMainView.toggle()

                         }) {
                             Text("Continue ")
                                 .frame(maxWidth: .infinity, alignment: .center) .padding().font(.footnote).fontWeight(.semibold).foregroundColor(
                                    username.isEmpty || password.isEmpty ? .gray:.white)
                             NavigationLink("", destination:  MainView(), isActive: $showMainView)
                         }
             
                         .frame(width:326,height: 37 )
                         .background(username.isEmpty || password.isEmpty ? .white : Color(red: 0.926, green: 0.413, blue: 0.227))
                                    .cornerRadius(4).padding(.leading)
                         .disabled(username.isEmpty || password.isEmpty)
                
    //                 Spacer()
               
            }.frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
                
        ).padding().background(Color(red: -0.001, green: 0.204, blue: 0.398))
                .navigationBarHidden(true)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}



struct LoginTextView: View {
    let text:String
    let font:Font?
    let color : Color
    let fontWeight :  Font.Weight?
    let height : Double
    var body: some View {
        VStack{
            Text(text).font(font).foregroundColor(color).fontWeight(fontWeight)
            Spacer().frame(height:height )
        }.background(Color(red: -0.001, green: 0.204, blue: 0.398))
    }
}
