//
//  MainView.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import SwiftUI
import UIKit
struct MainView:View {
    
    //MARK: Navigation Bar Text Color
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(#colorLiteral(red: 0.9254901961, green: 0.4117647059, blue: 0.2274509804, alpha: 1))]
        
    }
    @State var profileKlicked = false
    @State var percent : CGFloat = 60
    var body: some View {
        //        if (profileKlicked==true){ProfileView()}
        
        
        
        VStack(alignment: .leading){
            //                    Divider()
            //                        .padding(.top, 40.0)
            Spacer()
            
            Text("Progress")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding([.top, .leading, .trailing])
            
            ProgressBar(percent: percent)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .animation(.spring())
            
            Text("Trips")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding([.top, .leading])
            
            ZoneCard()
            //                   Spacer()
            
        }
        .padding(.top)
        .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9529411765, blue: 0.968627451, alpha: 1)))
        .navigationTitle("Welcome,Abdullah")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Welcome, Driver")
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    print("❤️")
                    profileKlicked.toggle()
                    
                } label: {
                    Image(systemName:"person.circle")
                        .resizable()
                        .frame(width: 25.0, height: 25.0)
                    NavigationLink("", destination:  ProfileView(), isActive: $profileKlicked)
                }
            }
            ToolbarItem(placement: .navigationBarLeading){
                
                Text(Date().displayFormat)
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
            }
            
        }
        
        //                .toolbar {
        //                    ToolbarItem(placement:.navigationBarLeading){
        //
        //                        VStack(alignment: .leading){
        //
        //                            Text(Date().displayFormat)
        //                                .font(.subheadline)
        //                                .fontWeight(.regular)
        //                                .foregroundColor(Color.gray)
        //
        //                            HStack{
        //                                //MARK: Driver Name
        //                                Text("Welcome, Abdullah")
        //                                    .padding(/*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
        //                                    .navigationBarTitleDisplayMode(.large)
        //                                    .font(.title)
        //                                    .fontWeight(.bold)
        //                                    .foregroundColor(Color.accentColor)
        //                               Spacer()
        //                                Spacer()
        //                                Button {
        //                                    print("❤️")
        //                                    profileKlicked.toggle()
        //
        //                                } label: {
        //                                    Image(systemName:"person.circle")
        //                                        .resizable()
        //                                       .frame(width: 25.0, height: 25.0)
        //                                }.padding(.leading)
        //                                .padding(.leading)
        //
        //
        //
        //                            }
        //
        //                        }.padding(.top, 100.0)
        //
        //                        //                            Spacer()
        //
        //
        //
        //
        //                    }
        //
        //
        //
        //
        //
        //                }
        .frame(height: 700.0)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
