//
//  TypeSport.swift
//  SportEvents
//
//  Created by Vlad Ihnatenko on 20.08.2023.
//

import Foundation


enum TypeSport {
    case football
    case basketball
    
    var area: (Int, Int) {
        switch self {
        case .football:
            return (180, 90)
        case .basketball:
            return (44, 27)
        }
    }
}
