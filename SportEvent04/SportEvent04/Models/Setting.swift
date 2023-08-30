//
//  Setting.swift
//  SportEvents
//
//  Created by Vlad Ihnatenko on 20.08.2023.
//

import Foundation


class Setting {
    var theme: String
    var language: String
    var push: String
    
    init(theme: String, language: String, push: String) {
        self.theme = theme
        self.language = language
        self.push = push
    }
}
