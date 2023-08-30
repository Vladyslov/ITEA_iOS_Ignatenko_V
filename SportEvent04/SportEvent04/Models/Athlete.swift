//
//  Athlete.swift
//  SportEvents
//
//  Created by Vlad Ihnatenko on 20.08.2023.
//

import Foundation


class Athlete {
    
    var name: String
    var age: UInt
    var number: UInt
    var gender: String
    var country: String
    
    init(name: String, age: UInt, number: UInt, gender: String, country: String) {
        self.name = name
        self.age = age
        self.number = number
        self.gender = gender
        self.country = country
    }
    
}
