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
    case factory
    case singleton
    case strategy
    
    var title: String {
        switch self {
        case .abstractFactory:
            return "Abstract Factory"
        case .builder:
            return "Builder"
        case .prototype:
            return "Prototype"
        case .factory:
            return "Factory"
        case .singleton:
            return "Singleton"
        case .strategy:
            return "Strategy"
        }
    }
    
    var type: String {
        switch self {
        case .factory:
            return "Порождающий"
        case .strategy :
            return "Поведенческий"
        default:
            return ""
        }
    }
    
    static var all = Self.allCases
}
