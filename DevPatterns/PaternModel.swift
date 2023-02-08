//
//  PaternModel.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 04.02.2023.
//

import Foundation

enum PatternType: CaseIterable {
    case abstractFactory
    case builder
    case prototype
    
    var title: String {
        switch self {
        case .abstractFactory:
            return "Abstract Factory"
        case .builder:
            return "Builder"
        case .prototype:
            return "Prototype"
            
        }
    }
    
    static var all = Self.allCases
}
