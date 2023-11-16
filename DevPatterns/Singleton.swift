//
//  Singleton.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 16.11.2023.
//

import Foundation

class SingletonPattern {
    static let shared = SingletonPattern()
    
    private init() {
        
    }
    
    var value = 0
    
    func doSomething() {
        print(" Singlenot active result \(value) ")
    }
    
}

