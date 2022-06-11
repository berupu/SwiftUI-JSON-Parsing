//
//  MainData.swift
//  SwiftUI JSON Parsing
//
//  Created by Ashraful Islam Rupu on 6/11/22.
//

import SwiftUI

struct MainData: Hashable, Codable {
    let data: SecondaryData
}
struct SecondaryData: Hashable, Codable {
    let data: [Order]
}

struct Order: Hashable, Codable {
    let orderId: Int
    let bookingDate: String
    let bookingTime: String
    let service: Service
    let carLatitude: String
    let carLongitude: String
    let company: Company
    let car: Car
    let category: Category
    let orderTrack: OrderTrack
    
}

struct Service: Hashable, Codable {
    let serviceName: String
}

struct Company: Hashable, Codable {
    let companyName: String
    let aboutUs: String
}

struct Car: Hashable, Codable {
    let vehicleNickName : String
    let customer: Customer
}

struct Customer: Hashable, Codable {
    let fullName: String
}

struct Category: Hashable, Codable {
    let categoryName: String
}

struct OrderTrack: Hashable, Codable {
    let name: String
    let details: String
}


