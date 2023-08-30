//
//  Event.swift
//  SportEvents
//
//  Created by Vlad Ihnatenko on 20.08.2023.
//

import Foundation


class Event {
    var title: String
    var description: String
    var date: Int
    var place: String
    var price: Double
    var tickets: [tickets]
    
    init(title: String, description: String, date: Int, place: String, price: Double, tickets: [tickets]) {
        self.title = title
        self.description = description
        self.date = date
        self.place = place
        self.price = price
        self.tickets = tickets
    }
}
