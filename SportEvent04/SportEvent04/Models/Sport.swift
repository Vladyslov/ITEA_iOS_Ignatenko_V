//
//  Sport.swift
//  SportEvents
//
//  Created by Vlad Ihnatenko on 20.08.2023.
//

import Foundation


class Sport {
    let type: SportType
    let equipment: [Equipment]
    
       
    init(type: SportType, equipment: [Equipment]) {
        self.type = type
        self.equipment = equipment
    }
}
