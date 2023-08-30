//
//  Place.swift
//  SportEvents
//
//  Created by Vlad Ihnatenko on 20.08.2023.
//

import Foundation


class Place {
    
    var address: String
    var size: Double
    var peopleCount: Int
    var typeSport: [TypeSport]
    var price: Double
    
    init(address: String, size: Double, peopleCount: Int, typeSport: [TypeSport], price: Double) {
        self.address = address
        self.size = size
        self.peopleCount = peopleCount
        self.typeSport = typeSport
        self.price = price
    }
}
