//
//  Team.swift
//  SportEvents
//
//  Created by Vlad Ihnatenko on 20.08.2023.
//

import Foundation

class Team {
    var athlete: [Athlete]
    var name: String
    var dateCreate: Int
    var couch: String
    var sport: String
    
    init(athlete: [Athlete], name: String, dateCreate: Int, couch: String, sport: String) {
        self.athlete = athlete
        self.name = name
        self.dateCreate = dateCreate
        self.couch = couch
        self.sport = sport
    }
}
