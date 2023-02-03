//
//  BottomSheet.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import SwiftUI

struct CustomButton: View {
    
    @State var isArrived = true
    @State var otpSwich = false
//    @State var isDeleiverd = false
    @Binding var isDeleiverd: Bool
    @Binding var isDone:Bool
    @State var cantDeliver=false
    @State private var didTap:Bool = false
    @State private var selectedIndex = 0
    @State var text = ""
    var reasons = [
            "Customer unreachable",
            "Customer refused",
            "Package damged",
            "Road issues"
        ]
  
    let OTP = "1234"
    var body: some View {
        VStack(alignment: .center){
            if isArrived{
                Button {
                    otpSwich.toggle()
                    isArrived.toggle()
                } label: {
                    
                    Spacer()
                    Text("Arrived")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 4)
                            .frame(width: 300.0, height: 32.0)
                        )
                    
                    Spacer()
                    
                }
            }

            
            
            
            if otpSwich{
                VStack {
                    HStack{
                        Spacer()
                        
                        Button {
                            cantDeliver.toggle()
                            isDone.toggle()
                            otpSwich.toggle()
                        } label: {
                            Text("Can't Deliver ?")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .padding(.trailing)
                        }

                    }
                    
                    
                    TextField("OTP", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                        .foregroundColor(Color(red: 0.678, green: 0.678, blue: 0.678))
                    .padding()
                    
                    .onSubmit {
                                guard text.isEmpty == false  else { return }
                        if text == OTP{
                            isDeleiverd.toggle()
                            otpSwich.toggle()
                        }
                            }
                }

            }
            
            if cantDeliver{
                VStack(alignment: .center, spacing: 20.0){
                    
                    ForEach(0..<reasons.count, id: \.self) { i in
                    Button(
                        action: {
                            selectedIndex = i
                        },
                        label: {
                            if i==selectedIndex
                            {
                                Spacer()
                                Text(reasons[i])
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.black)
                                            .overlay(
                                                RoundedRectangle(cornerRadius:4)
                                                    .stroke(Color.accentColor)
                                           .frame(width: 300.0, height: 30)
                                           )
                                Spacer()
                                          
                            }else {
                                Spacer()
                                Text(reasons[i])
                                    .overlay(
                                        RoundedRectangle(cornerRadius:4)
                                            .stroke(Color(#colorLiteral(red: 0.6571641564, green: 0.6571640372, blue: 0.6571640372, alpha: 1)))
                                   .frame(width: 300.0, height: 30)
                                   )
                                    .foregroundColor(Color(red: 0.519, green: 0.534, blue: 0.525))
                                Spacer()
                            }
                         
                        })
                    }
                    
//                    Button {
//
//                    } label: {
//                        Spacer()
//                        Text("Done")
//                            .font(.caption)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .background(RoundedRectangle(cornerRadius: 4)
//                                .frame(width: 300.0, height: 32.0)
//                            )
//
//                        Spacer()
//                    }.padding(.top)

                    
                }.padding(.bottom)
            }
        }
    }
}

//struct CustomButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomButton( isDone:false)
//    }
//}


