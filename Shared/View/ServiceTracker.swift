//
//  ServiceTracker.swift
//  SwiftUI JSON Parsing
//
//  Created by Ashraful Islam Rupu on 6/11/22.
//

import SwiftUI

struct ServiceTracker: View {
    
    var order: Order
    
    var body: some View {
        
        VStack {
            TopView(icon: "arrow.left")
                .padding(.top, 50)
                .padding(.bottom, 45)
            
            VStack(spacing: -10){
                
                Group{
                    Task(title: order.orderTrack.name, icon: "hand.thumbsup", done: true)
                    Task(title: order.orderTrack.details, icon: "hand.thumbsup", done: true)
                    Task(title: order.orderTrack.details, icon: "hand.thumbsup", done: false)
                    Task(title: order.orderTrack.details, icon: "hand.thumbsup", done: false)
                    Task(title: order.orderTrack.details, icon: "hand.thumbsup", done: false)
                    Task(title: order.orderTrack.details, icon: "hand.thumbsup", done: false)
                    Task(title: order.orderTrack.details, icon: "hand.thumbsup", done: false)
                    Task(title: order.orderTrack.details, icon: "hand.thumbsup", done: false)
                    Task(title: order.orderTrack.details, icon: "hand.thumbsup", done: false)
                    Task(title: order.orderTrack.details, icon: "hand.thumbsup", done: false)
                    
                    
                }
                .padding(.horizontal, 40)
    
            }
            .frame(width: getScreen().width, height: getScreen().height * 0.85)
            .background(.white)
            .cornerRadius(30)
            .overlay(
                VStack {
                    HStack {
                        Image(systemName: "doc.text.fill")
                            .frame(width: 60, height: 50)
                            .foregroundColor(.purple)
                            .background(.black)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Order Number")
                                .padding(.bottom,1)
                            Text("#\(order.orderId)")
                                .font(.system(size: 18))
                                .bold()
                            
                        }
                    }
                    
                    .frame(height: 80)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 15, x: 8, y: 8)
                    .padding(.horizontal, 20)
                    Spacer()
                }
                    .offset(x: 0, y: -20)
                
            )
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
        .onAppear{
            print(order.orderId)
        }
        
        
    }
        
    
    @ViewBuilder
    func Task(title: String, icon: String, done: Bool) -> some View {
        HStack {
            VStack(spacing: -16) {
                Image(systemName: done ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(.green)
                    .frame(width: 50, height: 50)
                HStack {
                    Divider()
                        .frame(width: 4,height: 30)
                        .background(.black)
                    
                }
                //Spacer()
            }
            
            Image(systemName: icon)
                .frame(width: 50, height: 50)
                
            VStack(alignment: .leading){
                Text(title)
                    .font(.system(size: 20).bold())
                Text("you are putting that monkey in the")
            }
        }
        .frame(width: getScreen().width, height: 60)
    }
}

//struct ServiceTracker_Previews: PreviewProvider {
//
//    static var previews: some View {
//
//        ServiceTracker(order: Order)
//    }
//}

//
//  ContentView.swift
//  Shared
//
//  Created by Ashraful Islam Rupu on 6/11/22.
//


