//
//  PackageInfoCard.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import SwiftUI

struct PackageInfoCard: View {
    @StateObject var packageInfo = PackagesViewModel()
    @State var isDeleiverd=false
    @State var text = ""
    @State var isArrived = false
    @State var isDone = false
    @State var otpSwich = false
    
    @State private var Index = 0
    var body: some View {
        
        VStack{
            
            ForEach(packageInfo.packages,id: \.self){ package in
                
                VStack(alignment: .leading){
                    
                    HStack{
                        VStack(alignment: .leading) {
                            Text(package.PackageID)
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.accentColor)
                                .padding(.top)
                            
                            Text(package.CustomerName)
                                .font(.title3)
                                .fontWeight(.semibold)
                        }
                        
                        Spacer()
                        
                        // only enable the first button
                        if(getIndex(Package: package)==0){
                            Button {
                                
                                isArrived.toggle()
                                let toLatitude = 24.763168471219274
                                let toLongitude = 46.648172324956960
                                
                                let fromLatitude = 10.00
                                let fromLongitude = 10.00
                                
                                self.navigateOnGoogleMap(sourceLatitude: fromLatitude, sourceLongitude: fromLongitude, destinationLatitude: toLatitude, destinationLongitude: toLongitude)
                                
                            } label: {
                                Text("Direction")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .background(RoundedRectangle(cornerRadius: 4)
                                        .frame(width: 80.0, height: 32.0)
                                                
                                    )
                            }
                            .padding(.trailing)
                        }
                        
                        else{
                            Button {
                                
                                
                            } label: {
                                Text("Direction")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .background(RoundedRectangle(cornerRadius: 4)
                                        .frame(width: 80.0, height: 32.0)
                                                
                                    )
                            }.disabled(true)
                                .padding(.trailing)
                        }
                        
                    }.padding(.horizontal)
                    //                    HStack {
                    VStack(alignment: .leading){
                        Text("Adress: ")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.gray)
                        
                        
                        Text(package.CustomerAdd)
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                            .padding(.bottom)
                        
                        
                        if isArrived && getIndex(Package: package)==0 {
                            
                            CustomButton(isDeleiverd: $isDeleiverd, isDone: $isDone)
                            
                        }
                        
                        if isDeleiverd{
                            
                            
                            if(getIndex(Package: package)==0) {
                                Button {
                                    let index = getIndex(Package: package)
                                    packageInfo.packages.remove(at: index)
                                    isDeleiverd.toggle()
                                    isArrived.toggle()
                                    
                                } label: {
                                    
                                    Spacer()
                                    Text("Delivered")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .background(RoundedRectangle(cornerRadius: 4)
                                            .frame(width: 300.0, height: 32.0)
                                        )
                                    
                                    Spacer()
                                    
                                }
                            }
                            
                            
                        }
                        
                        
                        if isDone {
                            
                            if(getIndex(Package: package)==0) {
                                Button {
                                    let index = getIndex(Package: package)
                                    packageInfo.packages.remove(at: index)
                                    isArrived.toggle()
                                    isDone.toggle()
                                    
                                    
                                } label: {
                                    
                                    Spacer()
                                    Text("Done")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .background(RoundedRectangle(cornerRadius: 4)
                                            .frame(width: 300.0, height: 32.0)
                                            .padding()
                                        )
                                    
                                    Spacer()
                                    
                                }
                            }                            }
                        
                        
                    }.padding([.leading, .bottom])
                    //                        Spacer()
                    //                    }
                    
                    
                    
                    
                    
                }
                .background(RoundedRectangle(cornerRadius: 8.0)
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .foregroundColor(.white))
                .padding(.horizontal)
                
            }
            
            Spacer()
        }
        .background(Color(#colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9764705882, alpha: 1)))
        
    }
    
    func navigateOnGoogleMap(sourceLatitude : Double, sourceLongitude : Double, destinationLatitude : Double, destinationLongitude : Double) {
        let urlGoogleMap : URL = URL(string: "comgooglemaps://?saddr=\(sourceLatitude),\(sourceLongitude)&daddr=\(destinationLatitude),\(destinationLongitude)&directionsmode=driving")!
        
        if UIApplication.shared.canOpenURL(urlGoogleMap) {
            UIApplication.shared.open(urlGoogleMap, options: [:], completionHandler: nil)
            
        } else {
            let urlString = URL(string:"http://maps.google.com/?saddr=\(sourceLatitude),\(sourceLongitude)&daddr=\(destinationLatitude),\(destinationLongitude)&directionsmode=driving")
            
            UIApplication.shared.open(urlString!, options: [:], completionHandler: nil)
        }
    }
    
    func getIndex(Package: PackageModel)-> Int {
        return packageInfo.packages.firstIndex { currentPackage in
            return currentPackage.id == Package.id
        } ?? 0
    }
}

struct PackageInfoCard_Previews: PreviewProvider {
    static var previews: some View {
        PackageInfoCard()
    }
}


