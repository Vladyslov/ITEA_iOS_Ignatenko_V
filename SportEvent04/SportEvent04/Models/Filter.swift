//
//  Filter.swift
//  SportEvents
//
//  Created by Vlad Ihnatenko on 20.08.2023.
//

import Foundation



enum Filter {
    case country
    case price
    case date
    case time
    
    var title: String {
        switch self {
        case .country:
            return "Краiна"
        case .price:
            return "Цiна"
        case .date:
            return "Дата"
        case .time:
            return "Час"
        }
    }
}
