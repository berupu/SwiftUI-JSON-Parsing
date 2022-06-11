//
//  ContentView.swift
//  Shared
//
//  Created by Ashraful Islam Rupu on 6/11/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var jsonParsingVM: JSONParsingVM = JSONParsingVM()
    
    var body: some View {
        
        VStack {
            TopView(icon: "lineweight")
                .padding(.top, 50)
                .padding(.bottom, 10)
            
            
            //Spacer()
            
            VStack{
                ScrollView(.vertical, showsIndicators: false){
                        ForEach(jsonParsingVM.mainData, id: \.self) { order in
                            ServiceList(service: order.service.serviceName, car: order.car.vehicleNickName, date: order.bookingDate)
                                .padding(.horizontal)
                                .fullScreenCover(isPresented: $jsonParsingVM.nextScreen) {
                                    ServiceTracker(order: order)
                                }

                        }
                }
                .padding(.top, 70)
                
            }
            .frame(width: getScreen().width, height: getScreen().height * 0.85)
            .background(.white)
            .cornerRadius(30)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
        
        
    }
    
    @ViewBuilder
    func ServiceList(service: String, car: String, date: String) -> some View {
        
        Button {
            jsonParsingVM.nextScreen.toggle()
        } label: {
            HStack {
                Image(systemName: "simcard")
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .background(.red)
                    .clipShape(Circle())
                Spacer()
                VStack(alignment: .leading){
                    Text(service)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .bold()
                    Group{
                        Text("Car Detail: \(car)")
                        Text("Date of Service: \(date)")
                    }
                    .foregroundColor(.gray)
                }
                Spacer()
                Text("Driver On The\nWay To Pick-Up")
                    .foregroundColor(.red)
                    .bold()
            }
            .padding(.horizontal)
            .background(.white)
            .cornerRadius(12)
            .shadow(color: .gray, radius: 8, x: 8, y: 8)
            //.shadow(color: .gray, radius: 8, x: -8, y: 0)
        }

        
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}

extension View {
    func getScreen() -> CGRect{
        UIScreen.main.bounds
    }
}
