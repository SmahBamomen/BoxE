//
//  PackagesView.swift
//  BoxE
//
//  Created by Farah Ashraf on 30/01/2023.
//

import SwiftUI

struct PackagesView: View {
//    var zone: ZoneModel
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    var body: some View {
        ZStack{
           
           MapView()
                
            
            //Bottom Sheet...
            GeometryReader { proxy -> AnyView in
                let height = proxy.frame(in: .global).height
                
                return AnyView(
                    
                    ZStack {
                        
                        VStack {
                            Capsule()
                                .foregroundColor(Color(#colorLiteral(red: 0.7529411765, green: 0.7568627451, blue: 0.7607843137, alpha: 1)))
                                .frame(width: 40, height: 5)
                                .padding(.top)
                            
                            //ScrollView Content Here
                            BottomSheet()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        .frame(maxHeight: .infinity, alignment: .top)
                    }
                        .offset(y: height - 400)
                        .offset(y: -offset > 0 ? -offset <= (height - 400) ? offset : -(height - 500) : 0)
                        .gesture(DragGesture().updating($gestureOffset, body: {value, out, _ in
                            out = value.translation.height
                            onChange()
                        }).onEnded({ value in
                            
                            let maxHeight = height - 140
                            
                            withAnimation {
                                //Logic Condition For Moving States...
                                //Up down or mid...
                                if -offset > 140 && -offset < maxHeight / 2 {
                                    //Mid..
                                    offset = -(maxHeight / 3)
                                }
                                else if -offset > maxHeight / 2 {
                                    offset = -maxHeight
                                }
                                else {
                                    offset = 0
                                }
                            }
                            // Storing Last Offset...
                            // So that the gesture can continue from the last position...
                            lastOffset = offset
                            
                        }))
                )
                
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }.navigationTitle("Zone A")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    func onChange() {
        DispatchQueue.main.async {
            self.offset = gestureOffset + lastOffset
        }
    }

}

struct PackagesView_Previews: PreviewProvider {
    static var previews: some View {
        PackagesView()
    }
}
